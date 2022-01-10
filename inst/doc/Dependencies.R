## ---- echo = F, message = F---------------------------------------------------
set.seed(123)

## ----global_options, include=FALSE--------------------------------------------
knitr::opts_chunk$set(fig.width=7, fig.height=4.5, fig.align='center', warning=FALSE, message=FALSE, cache = FALSE, eval = FALSE)

## ----eval=FALSE---------------------------------------------------------------
#  install_sjSDM(version = c("gpu")) # or "cpu" if you do not have a proper gpu device

## ----eval=FALSE---------------------------------------------------------------
#  install_sjSDM(version = c("gpu")) # or "cpu" if you do not have a proper gpu device

## ----eval=FALSE---------------------------------------------------------------
#  install_sjSDM()

## ----eval=FALSE---------------------------------------------------------------
#  library(sjSDM)
#  community <- simulate_SDM(sites = 100, species = 10, env = 5)
#  Env <- community$env_weights
#  Occ <- community$response
#  
#  model <- sjSDM(X = Env, Y = Occ, formula = ~0+X1*X2 + X3 + X4)
#  summary(model)

