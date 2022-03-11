## ----eval=FALSE---------------------------------------------------------------
#  library(sjSDM)
#  community <- simulate_SDM(sites = 100, species = 10, env = 5)
#  Env <- community$env_weights
#  Occ <- community$response
#  
#  model <- sjSDM(Y = Occ, env = linear(Env, ~0+X1*X2 + X3 + X4))
#  summary(model)

