#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include <stdint.h>

#include "solveur.h"
#include "ville.h"
#include "utils.h"

Solution resoudre_held_karp(Ville *villes, int n)
{
    uint32_t nb_masques = 1 << n;

    // Table de mémoïsation : memo[mask * n + ville_actuelle]
    float *memo = malloc(nb_masques * n * sizeof(float));
    // Pour la reconstruction : parent[mask * n + ville_actuelle]
    int8_t *parent = malloc(nb_masques * n * sizeof(int));

    // Initialisation
    for (uint32_t i = 0; i < nb_masques * n; i++)
    {
        memo[i] = INFINITY;
        parent[i] = -1;
    }

    // Calcul de la matrice des distances (format "plat")
    float *dists = calculer_matrice_distance(villes, n);

    // --- ÉTAPE 1 : CAS DE BASE ---
    // On part de la ville 0. Pour chaque ville i, on stocke la distance 0 -> i
    for (int i = 1; i < n; i++)
    {
        uint32_t mask = (1 << 0) | (1 << i);
        memo[mask * n + i] = dists[0 * n + i];
        parent[mask * n + i] = 0;
    }

    // --- ÉTAPE 2 : REMPLISSAGE DYNAMIQUE ---
    for (int s = 3; s <= n; s++)
    { // Taille du sous-ensemble
        for (uint32_t mask = 0; mask < nb_masques; mask++)
        {
            if (compter_bits_actifs(mask) != s || !(mask & (1 << 0)))
            {
                continue;
            }

            for (int j = 1; j < n; j++)
            { // Ville actuelle (arrivée)
                if (!(mask & (1 << j)))
                    continue;

                uint32_t prev_mask = mask ^ (1 << j);
                float min_dist = INFINITY;
                int meilleur_k = -1;

                for (int k = 1; k < n; k++)
                { // Ville précédente
                    if (!(prev_mask & (1 << k)))
                        continue;

                    float d = memo[prev_mask * n + k] + dists[k * n + j];
                    if (d < min_dist)
                    {
                        min_dist = d;
                        meilleur_k = k;
                    }
                }
                memo[mask * n + j] = min_dist;
                parent[mask * n + j] = meilleur_k;
            }
        }
    }

    // --- ÉTAPE 3 : CALCUL DU COÛT FINAL (Retour au point de départ) ---
    float cout_final = INFINITY;
    int derniere_ville = -1;
    uint32_t full_mask = nb_masques - 1;

    for (int i = 1; i < n; i++)
    {
        float d = memo[full_mask * n + i] + dists[i * n + 0];
        if (d < cout_final)
        {
            cout_final = d;
            derniere_ville = i;
        }
    }

    // --- ÉTAPE 4 : RECONSTRUCTION DU CHEMIN ---
    int *chemin = malloc(n * sizeof(int));
    int curr_v = derniere_ville;
    uint32_t curr_m = full_mask;

    for (int i = n - 1; i >= 1; i--)
    {
        chemin[i] = curr_v;
        int prev_v = parent[curr_m * n + curr_v];
        curr_m ^= (1 << curr_v);
        curr_v = prev_v;
    }
    chemin[0] = 0; // Ville de départ

    // --- NETTOYAGE ---
    free(memo);
    free(parent);
    free(dists);

    // Préparation de la structure de retour
    Solution sol;
    sol.cout = cout_final;
    sol.chemin = chemin;
    sol.n_villes = n;
    sol.temps_ms = 0; // Sera rempli par le main.c

    return sol;
}