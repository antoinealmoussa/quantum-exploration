#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "common.h"
#include "ville.h"
#include "solveur.h"
#include "utils.h"

int main(int argc, char *argv[]) {
    // 1. Gestion des paramètres d'entrée
    int n = 10; // Valeur par défaut
    if (argc > 1) {
        n = atoi(argv[1]);
    }

    if (n < 2 || n > 31) {
        fprintf(stderr, "Erreur : n doit être compris entre 2 et 31 (limite du bitmask 32-bit).\n");
        return EXIT_FAILURE;
    }

    // 2. Initialisation
    init_rand();
    printf("--- TSP Solver : Held-Karp (C Edition) ---\n");
    printf("Génération de %d villes...\n", n);

    Ville* villes = generer_villes_aleatoires(n, 100.0f, 100.0f);
    if (!villes) return EXIT_FAILURE;

    // 3. Résolution et Chronométrage
    printf("Calcul du chemin optimal en cours...\n");
    
    clock_t start = clock();
    Solution sol = resoudre_held_karp(villes, n);
    clock_t end = clock();

    sol.temps_ms = ((double)(end - start) * 1000.0) / CLOCKS_PER_SEC;

    // 4. Affichage des résultats
    printf("\n==========================================\n");
    printf("RÉSULTAT :\n");
    printf("  Distance totale : %.2f\n", sol.cout);
    printf("  Temps de calcul : %.2f ms\n", sol.temps_ms);
    printf("  Chemin trouvé   : ");
    afficher_solution(sol);
    printf("==========================================\n");

    // 5. Nettoyage de la mémoire
    // On libère ce qui a été alloué dans les différents modules
    free(villes);
    if (sol.chemin) free(sol.chemin);

    return EXIT_SUCCESS;
}