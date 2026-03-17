# Modélisation de la concentration d'Ozone par Régression Linéaire Multiple

## Présentation du Projet
Ce projet consiste à développer un modèle statistique permettant de prédire la concentration maximale d'ozone (`maxO3`) en fonction de diverses variables météorologiques (températures à différentes heures, nébulosité, et concentration d'ozone de la veille).

La base de données **Dataset_ozone.txt** contient 14 variables à savoir: 
* obs : mois-jour ;
* maxO3 : teneur maximale en ozone observée sur la journée (en μ\gr/m3
 ) ;
* T9, T12, T15 : température observée à 9 h, 12 h et 15 h ;
* Ne9, 12, Ne15 : nébulosité observée à 9 h, 12 h et 15 h ;
* Vx9, Vx12, Vx15 : composante est-ouest du vent à 9 h, 12 h et 15 h ;
* maxO3v : teneur maximale en ozone observée la veille ;
* vent : orientation du vent à 12 h ;
* pluie : occurrence ou non de précipitations.


L'objectif est d'identifier les facteurs les plus influents et de garantir la fiabilité des prévisions à travers une série de tests de diagnostic rigoureux.

## Technologies et Librairies
* **Langage :** R
* **Librairies clés :**
    * `dplyr` : Manipulation et nettoyage des données.
    * `ggplot2` : Visualisation des données.
    * `car` : Calcul du facteur d'inflation de la variance (VIF).
    * `lmtest` : Test d'homoscédasticité (Breusch-Pagan).

## Méthodologie Statistique
1. **Construction du Modèle Initial :** Inclusion de toutes les variables explicatives disponibles.
2. **Optimisation du Modèle :** Sélection manuelle des variables par élimination successive des variables non significatives (p-value) pour ne garder que les prédicteurs les plus pertinents (`T12`, `Ne9`, `maxO3v`).
3. **Validation Automatique :** Comparaison avec une procédure de sélection descendante (*Backward Stepwise Regression*).
4. **Tests de Diagnostic :**
    * **Multicolinéarité :** Vérification via le test VIF.
    * **Homoscédasticité :** Test de Breusch-Pagan pour vérifier la constance de la variance des résidus.
    * **Normalité :** Test de Shapiro-Wilk sur les résidus du modèle.

## Résultats et Prédiction
Le modèle final permet d'effectuer des prévisions précises. 
*Exemple de résultat :* Pour une température à 12h de 15°C, une nébulosité à 9h de 2 et un maxO3 la veille de 100, le modèle prédit une valeur de concentration optimisée.

## Structure des fichiers
* `analyse_ozone.R` : Script complet de l'analyse et de la modélisation.
* `README.md` : Documentation du projet.
