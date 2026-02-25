## **Tutoriel : De l’algorithmie binaire classique à l’algorithmie quantique**

### **Objectif** : Comprendre comment un algorithme est implémenté à tous les niveaux d’abstraction, puis découvrir comment l’informatique quantique aborde ce problème.

---

## **Module 1 : Algorithmie binaire classique (TSP)**

### **Étape 1 : Implémentation en Python (Force brute et programmation dynamique)**

| Nombre de villes | Temps de calcul force brute | Temps de calcul programmation dynamique |
| ---------------- | --------------------------- | --------------------------------------- |
| 9                | 0.075s                      | 0.002s                                  |
| 10               | 0.725s                      | 0.006s                                  |
| 11               | 7.63s                       | 0.009s                                  |
| 12               | 91.45s                      | 0.02s                                   |
| 13               | NA                          | 0.007s                                  |
| 14               | NA                          | 0.17s                                   |
| 15               | NA                          | 0.34s                                   |
| 16               | NA                          | 0.79s                                   |
| 17               | NA                          | 1.97s                                   |
| 18               | NA                          | 5.16s                                   |
| 19               | NA                          | 14.59s                                  |
| 20               | NA                          | 60.67s                                  |

---

### **Étape 2 : Traduction en C**

| Nombre de villes | Temps de calcul python | Temps de calcul C |
| ---------------- | ---------------------- | ----------------- |
| 18               | 5.16s                  | 0.15s             |
| 19               | 14.59s                 | 0.3s              |
| 20               | 60.67s                 | 0.7s              |
| 21               | NA                     | 1.5s              |
| 22               | NA                     | 3s                |

---

### **Étape 3 : Déroulé de l'exécution du code C par l'ordinateur**

Exemple d'un code en C :

```
int main() {
    int a = 5;
    int b = 3;
    int c = a + b;
    return c;
}
```

```
// Génération de code assembleur depuis un exécutable
objdump -d tsp_solver > tsp_solver_assembleur.s
```

Assembleur généré

```
movl    $5, %eax   ; %eax = 5 (a)
movl    $3, %ebx   ; %ebx = 3 (b)
addl    %eax, %ebx ; %ebx = %ebx + %eax (b = b + a)
```

Exemple pour la première instruction : Le processeur écrit la valeur binaire de 5 (00000101) dans le registre %eax. Un registre est une petite mémoire ultra rapide du processeur. Par exemple, un registre 32 bits contient 32 transistors qui peuvent chacun stocker 0 ou 1 (ouvert ou fermé).

Chaque instruction, registre ou nombre est ensuite traduit en code machine binaire qui est interprété par le processeur. Par exemple :

- add -> 10000011
- ebx -> 11000011
- 5 -> 00000101

Le processeur contient un pointeur d'instruction qui indique dans quelle adresse de la RAM la prochaine instruction doit être récupérée, puis l'exécute etc...

Lorsque le programme est exécuté, il est d'abord chargé dans la RAM puis demande au processeur de déplacer le pointeur d'instruction à cet emplacement, puis le cycle s'enclenche.

https://cpu.land/the-basics

---

En revenant au problème du voyageur de commerce, deux limites étaient atteintes :

- Le temps de calcul : complexité temporelle en n^2\*2^n, soit plus de 2 fois plus de temps d'exécution en incrémentant la taille du problème
- La mémoire requise : complexité spatiale en n \* 2^n pour la programmation dynamique, soit 2 fois plus de stockage en incrémentant la taille du problème. Sachant que l'on stocke 5 octets par étape de solution (4 pour la distance, 1 pour le parent), 28 villes nécessite 8Go de RAM, 29 villes 16Go, ce qui devient impossible pour un ordinateur classique.

## **Module 2 (théorique) : Introduction à l'informatique quantique**

## **Module 2 : Algorithmie quantique (TSP)**

### **Étape 7 : Introduction à l’informatique quantique**

- **Concepts clés** :
  - Qubits, superposition, intrication, interférence.
  - Portes quantiques (Hadamard, CNOT, etc.).
  - Algorithmes quantiques (Grover, Shor).
- **Exercice** :
  - Installe [Qiskit](https://qiskit.org/) (Python) et exécute un circuit quantique simple (ex: création d’un qubit en superposition).

---

### **Étape 8 : Algorithmes quantiques pour le TSP**

- **Objectif** : Explorer comment le TSP peut être abordé avec un ordinateur quantique.
- **Pistes** :
  - **Recuit quantique** : Utilisé par D-Wave pour résoudre des problèmes d’optimisation.
  - **Algorithme de Grover** : Pour accélérer la recherche de solutions (mais pas pour résoudre directement le TSP).
  - **QAOA (Quantum Approximate Optimization Algorithm)** : Algorithme hybride quantique/classique pour les problèmes d’optimisation.
- **Exercice** :
  - Implémente un circuit QAOA simple pour un TSP avec 3 villes (utilise Qiskit).
  - Compare la solution quantique avec la solution classique.

---

### **Étape 9 : Transition vers l’algorithmie quantique**

- **Objectif** : Comprendre les limites et les avantages de l’algorithmie quantique pour le TSP.
- **Pistes** :
  - Étudie les articles de recherche sur le QAOA appliqué au TSP.
  - Explore les simulateurs quantiques (IBM Quantum Experience).
- **Exercice** :
  - Résume les différences entre les approches classiques et quantiques pour le TSP.

---

## **Module 3 : Projet final**

### **Étape 10 : Projet intégrateur**

- **Objectif** : Choisis un sous-ensemble de villes et implémente :
  1. Une solution classique optimisée (ex: 2-opt en C).
  2. Une solution quantique (QAOA en Qiskit).
- **Exercice** :
  - Compare les résultats et les temps d’exécution.
  - Rédige un rapport sur tes observations.

---
