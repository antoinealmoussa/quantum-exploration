from typing import List, Dict, Tuple
from entities.ville import Ville
from itertools import combinations

def longueur_trajet(p: List[Ville], depart: Ville) -> int:
    trajet_complet: tuple[Ville, ...] = (depart,) + p + (depart,)
    
    return sum(trajet_complet[i].distance_avec(trajet_complet[i+1]) for i in range(len(trajet_complet) - 1))

def generate_binary_combinations(ens: range, k: int):
    for combo in combinations(ens, k):
        # On place la ville 0 au début du chemin
        mask = 1
        
        # On ajoute chaque ville de la combinaison au sous-chemin
        for i in combo:
            mask |= (1 << i)
            
        yield mask

def generate_path_from_binary(villes: List[Ville], parent_table, chemin: int, parent: int):
    chemin_final = [0]
    chemin_actuel = chemin
    ville_actuelle = parent
    
    while ville_actuelle != 0:
        chemin_final.append(ville_actuelle)
        prochaine_ville = parent_table[chemin_actuel][ville_actuelle]
        chemin_actuel ^= (1 << ville_actuelle)
        ville_actuelle = prochaine_ville
    
    chemin_final.append(0)

    return [villes[i] for i in reversed(chemin_final)]
    