#' R-squared
#' 
#' calculate R-squared following Nagelkerke or McFadden
#' @param model model
#' @param method Nagelkerke or McFadden
#' 
#' @details
#' \loadmathjax 
#' 
#' Calculate R-squared following Nagelkerke or McFadden:
#' 
#' \itemize{
#' \item Nagelkerke: \mjeqn{R^2 = 1 - \exp(2/N \cdot (log\mathcal{L}_0 - log\mathcal{L}_1 ) )}{}
#' \item McFadden: \mjeqn{R^2 = 1 - log\mathcal{L}_1 / log\mathcal{L}_0  }{}
#'} 
#'
#' @return 
#' 
#' R-squared as numeric value
#' 
#' @author Maximilian Pichler
#' @import stats
#' @export

Rsquared = function(model, method = c("Nagelkerke", "McFadden")) {
  
  method = match.arg(method)
  
  if(is.null(model$Null)) {
    if(inherits(model, "spatial")) {
      spatial_formula=stats::as.formula(~0)
    } else {
      spatial_formula=NULL
    }
    model$Null = update(model, env_formula=~1, spatial_formula=spatial_formula)
  }
  N0 = -logLik(model$Null)[[1]]
  N1 = -logLik(model)[[1]]
  
  if(method == "McFadden") {
    R2 = 1 - (N1/N0)
  } else {
    R2 = 1-exp(2/(nrow(model$data$Y))*(-N1+N0))
  }
  print(R2)
  return(invisible(R2))
}



 