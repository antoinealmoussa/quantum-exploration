from entities.algorithms.strategie_TSP import StrategieTSP
from entities.ville import Ville
from itertools import permutations
from typing import List
from utils import longueur_trajet
from functools import partial

class BruteForce(StrategieTSP):
    def resoudre(self, villes: List[Ville]) -> List[Ville]:
        depart = villes[0]
        villes_a_visiter = villes[1:]
        distance = partial(longueur_trajet, depart=depart)
        
        chemin = (depart,) + min(permutations(villes_a_visiter), key=distance) + (depart,)
        cout = longueur_trajet(chemin, depart)
        
        return chemin, cout