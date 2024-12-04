test_that("calculate_pvalue works for basic cases", {
  # Test case 1: Large effect size, should give small p-value
  p1 <- calculate_pvalue(effect_size = 2, se = 0.1, n = 100)
  expect_true(p1 < 0.05)
  
  # Test case 2: Small effect size, should give large p-value
  p2 <- calculate_pvalue(effect_size = 0.01, se = 0.1, n = 100)
  expect_true(p2 > 0.05)
  
  # Test case 3: Check if function handles different sample sizes
  p3 <- calculate_pvalue(effect_size = 0.5, se = 0.1, n = 30)
  expect_type(p3, "double")
})

test_that("calculate_pvalue handles invalid inputs", {
  # Test for negative standard error
  expect_error(calculate_pvalue(effect_size = 0.5, se = -0.1, n = 100))
  
  # Test for sample size less than 2
  expect_error(calculate_pvalue(effect_size = 0.5, se = 0.1, n = 1))
  
  # Test for non-numeric inputs
  expect_error(calculate_pvalue(effect_size = "0.5", se = 0.1, n = 100))
})