English version
# Ozone Concentration Modeling using Multiple Linear Regression

## Project Overview
This project aims to develop a statistical model to predict maximum ozone concentration (`maxO3`) based on various meteorological parameters, such as temperature at different times of the day, cloud cover, and previous day's ozone levels.

The dataset **Dataset_ozone.txt** contains the following 14 variables: 
* obs: month-day;
* maxO3: maximum ozone concentration observed during the day (in μg/m³
);
* T9, T12, T15: temperature observed at 9 a.m., 12 p.m., and 3 p.m.;
* Ne9, 12, Ne15: cloud cover observed at 9 a.m., 12 p.m., and 3 p.m.;
* Vx9, Vx12, Vx15: east-west wind component at 9 a.m., 12 p.m., and 3 p.m.;
* maxO3v: maximum ozone concentration observed the previous day;
* wind: wind direction at 12 p.m.;
* rain: occurrence or absence of precipitation.

The core objective is to identify the most significant predictors and ensure the model's reliability through rigorous diagnostic testing.

## Technologies and Libraries
* **Language:** R
* **Key Libraries:**
    * `dplyr`: Data manipulation and cleaning.
    * `ggplot2`: Data visualization.
    * `car`: Variance Inflation Factor (VIF) calculation.
    * `lmtest`: Homoscedasticity testing (Breusch-Pagan).

## Statistical Methodology
1. **Initial Model Building:** Construction of a full model including all available explanatory variables.
2. **Model Optimization:** Manual feature selection using a step-by-step elimination of non-significant variables (based on p-values) to retain only the most relevant predictors (`T12`, `Ne9`, `maxO3v`).
3. **Algorithmic Validation:** Comparison of the manual selection with an automated **Backward Stepwise Regression** procedure.
4. **Diagnostic Testing:**
    * **Multicollinearity:** Verified using the VIF test to ensure no high correlation between predictors.
    * **Homoscedasticity:** Conducted the **Breusch-Pagan test** to confirm constant variance of residuals.
    * **Normality:** Performed the **Shapiro-Wilk test** on residuals to validate model assumptions.

## Results and Prediction
The final model provides a robust framework for environmental forecasting. 
*Example:* For a temperature at 12 PM of 15°C, a cloud cover at 9 AM of 2, and a previous day's maxO3 of 100, the model successfully computes a precise predicted value.

## Repository Structure
* `ozone_multiple_linear_regression.R`: Full script for data analysis and modeling.
* `README.md`: Project documentation and summary.

French version

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
* `ozone_multiple_linear_regression.R` : Script complet de l'analyse et de la modélisation.
* `README.md` : Documentation du projet.
