#ifndef SOLVEUR_H
#define SOLVEUR_H

#include "common.h"

// Fonction principale de Held-Karp
// Retourne une structure Solution contenant le trajet optimal
Solution resoudre_held_karp(Ville* villes, int n);

#endif