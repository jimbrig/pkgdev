test_that("check_package_name works as it should", {
  # Bad Packages
  expect_false(check_package_name("1pkg"))
  expect_false(check_package_name("my_awesome_package"))
  expect_false(check_package_name("a"))

  # Good packages
  expect_true(check_package_name("myawesomepkg"))
  expect_true(check_package_name("my.awesome.pkg"))
  expect_true(check_package_name("map"))

  # error
  expect_error(check_package_name(1))
})

