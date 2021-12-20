
#' A recode-function that updates the variable by reference. Requires data.table.
#' Prints the count of the recoded variable.
#' @param dt Working data.table
#' @param variable The variable to recode
#' @param old a vector of the old values
#' @param new a vector of the new values
#' @keywords recode, lookup
#' @export
#' @examples
#' e_recode()
e_recode <- function(dt, variable, old, new) {
require(data.table)

dt <- dt
old <- c(old)
new <- c(new)
x <- as.character(variable)

lookup <- data.frame(old, new)

dt[lookup, on = c(x = "old"), x := new]

print(dt[, .N, keyby = variable])

}
