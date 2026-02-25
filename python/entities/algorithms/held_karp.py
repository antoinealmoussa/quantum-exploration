from entities.algorithms.strategie_TSP import StrategieTSP
from entities.ville import Ville
from utils import generate_binary_combinations, generate_path_from_binary
from typing import List, Dict, Tuple
import math
import numpy as np

class HeldKarp(StrategieTSP):
    def resoudre(self, villes: List[Ville]) -> List[Ville]:
        n = len(villes)
        
        # cout_table (resp parent_table) est une matrice stockant (identifiant binaire du chemin parcouru, dernière ville visiée) -> cout_min (resp parent)
        cout_table = np.full((1 << n, n), np.inf, dtype=np.float32)
        parent_table = np.full((1 << n, n), -1, dtype=np.int8)
        
        # Cas de base : distance de la ville 0 vers les autres
        for i in range(1, n):
            # Le bit 1 représente la ville 0
            # (1 << i) représente le décalage de i bit vers la gauche du bit 1 soit 2^i
            # 1 | (1 << i) représente un ensemble d'union du bit 1 (ville 0) avec la ville i
            cout_table[1 | (1 << i)][i] = villes[0].distance_avec(villes[i])
            parent_table[1 | (1 << i)][i] = 0

        # Remplissage de la table de coût par taille de sous-chemin
        for taille_sous_chemin in range(2, n):
            for binary_combination in generate_binary_combinations(range(1, n), taille_sous_chemin):
                for ville_suivante in range(1, n):
                    # On veut que la ville suivante soit dans la combinaison pour évaluer le meilleur chemin pour l'atteindre
                    if not (binary_combination & (1 << ville_suivante)):
                        continue
                    chemin_avant_ville_suivante = binary_combination ^ (1 << ville_suivante)
                    meilleur_cout_sous_chemin_actuel = math.inf
                    meilleur_parent = -1
                    
                    for ville_precedente in range(1, n):
                        # On veut que la ville précédente soit dans la combinaison
                        if not (chemin_avant_ville_suivante & (1 << ville_precedente)):
                            continue
                        
                        cout_sous_chemin_actuel = cout_table[chemin_avant_ville_suivante][ville_precedente] + villes[ville_precedente].distance_avec(villes[ville_suivante])
                    
                        if cout_sous_chemin_actuel < meilleur_cout_sous_chemin_actuel:
                            meilleur_cout_sous_chemin_actuel = cout_sous_chemin_actuel
                            meilleur_parent = ville_precedente
                            
                    cout_table[binary_combination][ville_suivante] = meilleur_cout_sous_chemin_actuel
                    parent_table[binary_combination][ville_suivante] = meilleur_parent
                    
        # Identification du meilleur chemin
        chemin_complet = (1 << n) - 1
        cout_meilleur_chemin = math.inf
        dernier_parent = -1
        
        for i in range(1, n):
            cout = cout_table[chemin_complet][i] + villes[i].distance_avec(villes[0])
            if cout < cout_meilleur_chemin:
                cout_meilleur_chemin = cout
                dernier_parent = i
        
        chemin = generate_path_from_binary(villes, parent_table, chemin_complet, dernier_parent)
                
        return chemin, cout_meilleur_chemin
    
    