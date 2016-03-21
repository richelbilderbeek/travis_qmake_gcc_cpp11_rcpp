#include "do_magic_cpp.h"

//' Does magic
//' @param x Input
//' @return Magic value
// [[Rcpp::export]]
int do_magic_cpp(const int x) noexcept {
  return x * 2;
}
