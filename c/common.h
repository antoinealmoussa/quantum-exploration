#ifndef COMMON_H
#define COMMON_H

#include <math.h>

typedef struct {
    int id;
    float x;
    float y;
} Ville;

// Structure pour stocker le résultat complet
typedef struct {
    int* chemin;
    float cout;
    double temps_ms;
    int n_villes;
} Solution;

#endif