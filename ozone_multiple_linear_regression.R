

## Multiple linear regression

# Loading libraries / Chargement des librairies 

library(dplyr)
library(ggplot2)

# Building the initial model / Construction du modèle initial

reg_multi = lm(maxO3~T9+T12+T15+Ne9+Ne12+Ne15+maxO3v,data=ozone)
summary(reg_multi)

### We are starting to build the best model manually. 

## Removal of the Ne15 variable from the model/ Retrait de la variable Ne15 du modele

reg_multi <- lm(maxO3~T9+T12+T15+Ne9+Ne12+maxO3v,data=ozone)
summary(reg_multi)

## Removal of the Ne12 variable from the model / Retrait de la variable Ne12

reg_multi <- lm(maxO3~T9+T12+T15+Ne9+maxO3v,data=ozone)
summary(reg_multi)

## Removal of the T9 variable from the model / Retrait de la variable T9

reg_multi <- lm(maxO3~+T12+T15+Ne9+maxO3v,data=ozone)
summary(reg_multi)


## Removal of the T15 variable from the model / Retrait de la variable T15

reg_multi <- lm(maxO3~T12+Ne9+maxO3v,data=ozone)
summary(reg_multi) 

# Since the model is good, we will predict maxO3 / Le modele etant bon, nous allons prevoir maxO3l

library(lmtest)

## Test for Multicollinearity / Test de colinearite des variables
library(car)
vif(reg_multi)


# Test for homoscedasticity / Test d'homoscedasticite 

bptest(reg_multi) # p-value > 0.05, on ne rejette pas H0. Les varaiances sont homogÃ¨nes

## Normality test for residuals / Test de normalite des residus

shapiro.test(reg_multi$residuals)

# ----------------------------------------------------------

# Step by step regression. We didn't use any results from this regression/ Regression pas a pas

reg_null = lm(maxO3~1,data=ozone)

# backward regression: a bottom-up procedure / regression backward : procedure descendante

reg_tot <- lm(maxO3~T9+T12+T15+Ne9+Ne12+Ne15+maxO3v,data=ozone)
reg_backward = step(reg_tot,direction="backward")


## Prediction

a_prevoir_m <- data.frame(T12=15,Ne9=2,maxO3v=100)
maxO3_prev_m <- predict(reg_multi,a_prevoir_m)
round(maxO3_prev_m, digits=2)

