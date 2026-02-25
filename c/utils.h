#ifndef UTILS_H
#define UTILS_H

#include <stdint.h>

// Compte le nombre de bits à 1 dans un entier (poids de Hamming)
// Indispensable pour trier les masques par taille de sous-ensemble
int compter_bits_actifs(uint32_t n);

// Affiche le chemin de manière lisible (ex: 0 -> 3 -> 1 -> 2 -> 0)
void afficher_solution(Solution sol);

// Initialise le générateur de nombres aléatoires
void init_rand();

#endif