# --- Configuration du Compilateur ---
CC = gcc
# -O3: Optimisation maximale (vitesse)
# -Wall -Wextra: Affiche tous les avertissements pour éviter les bugs
CFLAGS = -O3 -Wall -Wextra
# -lm: Lie la bibliothèque mathématique (pour sqrt, etc.)
LDFLAGS = -lm

# --- Fichiers du projet ---
# Nom de l'exécutable final
TARGET = tsp_solver

# Liste des fichiers objets (.o) à générer
OBJS = main.o ville.o solveur.o utils.o

# --- Règles de compilation ---

# Règle par défaut : construit l'exécutable
all: $(TARGET)

# Liaison des objets pour créer l'exécutable
$(TARGET): $(OBJS)
	$(CC) $(OBJS) -o $(TARGET) $(LDFLAGS)

# Compilation de chaque fichier .c en .o
# On ajoute la dépendance aux headers (.h) pour recompiler si on les modifie
main.o: main.c common.h ville.h solveur.h utils.h
	$(CC) $(CFLAGS) -c main.c

ville.o: ville.c ville.h common.h
	$(CC) $(CFLAGS) -c ville.c

solveur.o: solveur.c solveur.h common.h
	$(CC) $(CFLAGS) -c solveur.c

utils.o: utils.c utils.h common.h
	$(CC) $(CFLAGS) -c utils.c

# Règle pour nettoyer le dossier (supprimer les binaires)
clean:
	rm -f $(OBJS) $(TARGET)

# Règle pour tout recompiler
re: clean all

.PHONY: all clean re