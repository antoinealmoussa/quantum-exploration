from typing import List, Protocol
from entities.ville import Ville

class StrategieTSP(Protocol):
    """Interface pour les algorithmes de résolution"""
    def resoudre(self, villes: List[Ville]) -> List[Ville]:
        ...