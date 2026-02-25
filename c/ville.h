#ifndef VILLE_H
#define VILLE_H

#include "common.h"

// Alloue et génère n villes avec des coordonnées aléatoires
Ville *generer_villes_aleatoires(int n, float max_x, float max_y);

// Calcule la distance euclidienne entre deux villes
float calculer_distance(Ville a, Ville b);

// Pré-calcule une matrice de distances pour éviter les appels à sqrt()
float *calculer_matrice_distance(Ville *villes, int n);

// Libère la matrice de distances
void liberer_matrice(float **matrice, int n);

#endif