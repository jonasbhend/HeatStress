#' Compute the diffusivity of water vapor in air.
#' 
#' Compute the diffusivity of water vapor in air, m2/s
#' 
#' @param Tk: value of air temperature in Kelvin.
#' @param Pair: value of air pressure in hPa.
#' 
#' @return  diffusivity of water vapor in air, m2/s
#' 
#' @author Ana Casanueva (05.01.2017).
#' @details Reference: BSL, page 505.
#' 

diffusivity <- function(Tk, Pair){
  
  pcrit13 <- (36.4 * 218) ^ (1 / 3)
  tcrit512 <- (132 * 647.3) ^ (5 / 12)
  Tcrit12 <- (132 * 647.3) ^ 0.5
  Mmix <- (1 / 28.97 + 1 / 18.015) ^ 0.5
  diffusivity <- 0.000364 * (Tk / Tcrit12) ^ 2.334 * pcrit13 * tcrit512 * Mmix / (Pair / 1013.25) * 0.0001
  
  return(diffusivity)
}