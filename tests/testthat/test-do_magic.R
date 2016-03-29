context("do_magic")

test_that("basic use", {
  expect_equal(do_magic_r(2), 4)
  expect_equal(do_magic_r(3), 6)
  expect_equal(do_magic_r(4), 8)

  expect_equal(do_magic_cpp(2), 4)
  expect_equal(do_magic_cpp(3), 6)
  expect_equal(do_magic_cpp(4), 8)
})
