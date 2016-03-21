#' Does magic
#' @param x Input
#' @return Magic value
#' @export
#' @useDynLib domagic
#' @importFrom Rcpp sourceCpp
do_magic_r <- function(x) {
  return(do_magic_cpp(x))
}
