test_that("loads data", {
  data("energy_and_emissions")
  expect_equal(sum(energy_and_emissions$Population), 7231674140)
})
