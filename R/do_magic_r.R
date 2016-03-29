#' @useDynLib domagic
#' @importFrom Rcpp sourceCpp
NULL

#' Does magic
#' @param x Input
#' @return Magic value
#' @export
do_magic_r <- function(x) {
  return(do_magic_cpp(x))
}
