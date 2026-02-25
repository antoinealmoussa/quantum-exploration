from entities.voyageur_commerce import VoyageurCommerce
from entities.algorithms.brute_force import BruteForce
from entities.algorithms.held_karp import HeldKarp
from entities.ville import Ville
from random import uniform

def main(city_amount: int):
    villes = [Ville(i, round(uniform(0, 10), 2), round(uniform(0, 10), 2)) for i in range(city_amount)]
    solveur_brute_force, solveur_held_karp = VoyageurCommerce(BruteForce()), VoyageurCommerce(HeldKarp())
    if city_amount <= 11:
        solveur_brute_force.executer(villes)
        print(solveur_brute_force)
    solveur_held_karp.executer(villes)
    print(solveur_held_karp)

if __name__ == "__main__":
    main(18)