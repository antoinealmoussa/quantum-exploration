from entities.algorithms.strategie_TSP import StrategieTSP
from entities.ville import Ville
from typing import List
import time

class VoyageurCommerce:
    def __init__(self, strategie: StrategieTSP):
        self.strategie = strategie

    def executer(self, villes: List[Ville]):
        debut = time.perf_counter()
        self.chemin, self.cout_total = self.strategie.resoudre(villes)
        self.temps_resolution = time.perf_counter() - debut
        
    def __str__(self):
        noms_villes = " -> ".join([str(v.id) for v in self.chemin])
        return (f"--- Solution ({self.strategie.__class__.__name__}) ---\n"
                f"Trajet: {noms_villes}\n"
                f"Coût: {self.cout_total:.2f}\n"
                f"Temps: {self.temps_resolution:.4f}s")