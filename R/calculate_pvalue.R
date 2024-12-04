#' Calculate p-value from effect size and standard error
#'
#' This function calculates the two-tailed p-value based on effect size,
#' standard error and sample size using t-distribution.
#'
#' @param effect_size Numeric value of the effect size (e.g., mean difference, correlation)
#' @param se Standard error of the effect size
#' @param n Sample size
#' @return A numeric value representing the two-tailed p-value
#' @examples
#' # Calculate p-value for a medium effect size
#' calculate_pvalue(effect_size = 0.5, se = 0.1, n = 100)
#'
#' # Calculate p-value for a small effect
#' calculate_pvalue(effect_size = 0.2, se = 0.15, n = 50)
#' @export
calculate_pvalue <- function(effect_size, se, n) {
  # Input validation
  if (!is.numeric(effect_size) || !is.numeric(se) || !is.numeric(n)) {
    stop("All parameters must be numeric")
  }
  if (se <= 0) {
    stop("Standard error must be positive")
  }
  if (n < 2) {
    stop("Sample size must be at least 2")
  }
  
  # Calculate t-statistic
  t_stat <- effect_size / se
  
  # Degrees of freedom
  df <- n - 1
  
  # Calculate two-tailed p-value using stats package
  p_value <- 2 * stats::pt(-abs(t_stat), df)
  
  return(p_value)
}