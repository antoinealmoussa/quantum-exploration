#include <stdlib.h>
#include "common.h"
#include <stdint.h>
#include <stdio.h>
#include <time.h>

int compter_bits_actifs(uint32_t n)
{
    int compteur = 0;
    while (n > 0)
    {
        n &= (n - 1); // Supprime le bit à 1 le plus bas
        compteur++;
    }
    return compteur;
}

void afficher_solution(Solution sol)
{
    if (sol.chemin == NULL || sol.n_villes <= 0)
    {
        printf("Aucun chemin à afficher.\n");
        return;
    }

    for (int i = 0; i < sol.n_villes; i++)
    {
        printf("%d -> ", sol.chemin[i]);
    }

    // On revient à la ville de départ (généralement la ville 0)
    printf("%d\n", sol.chemin[0]);
}

void init_rand()
{
    srand(time(NULL));
}