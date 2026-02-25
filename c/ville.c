#include <stdlib.h>
#include <math.h>
#include "common.h"

Ville *generer_villes_aleatoires(int n, float max_x, float max_y)
{
    Ville *tableau_villes = malloc(n * sizeof(Ville));

    for (int i = 0; i < n; i++)
    {
        tableau_villes[i].id = i;
        tableau_villes[i].x = (float)rand() / ((float)RAND_MAX / max_x);
        tableau_villes[i].y = (float)rand() / ((float)RAND_MAX / max_y);
    }

    return tableau_villes;
}

float calculer_distance(Ville a, Ville b)
{
    return sqrt((b.y - a.y) * (b.y - a.y) + (b.x - a.x) * (b.x - a.x));
}

float *calculer_matrice_distance(Ville *villes, int n)
{
    float *matrice_distance = malloc(n * n * sizeof(float));

    if (matrice_distance == NULL)
    {
        return NULL; // Toujours vérifier si le malloc a réussi
    }

    for (int i = 0; i < n; i++)
    {
        for (int j = 0; j < n; j++)
        {
            matrice_distance[i * n + j] = calculer_distance(villes[i], villes[j]);
        }
    }

    return matrice_distance;
}

void liberer_matrice(float **matrice, int n)
{
    for (int i = 0; i < n; i++)
    {
        free(matrice[i]);
    }

    free(matrice);
}