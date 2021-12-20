
#' A recode-function that updates the variable by reference. Requires data.table.
#' @param dt Working data.table
#' @param variable The variable to recode
#' @param old a vector of the old values
#' @param new a vector of the new values
#' @importFrom data.table :=
#' @importFrom data.table .N
#' @keywords recode, lookup
#' @export
#' @return Recoded data.table and prints the changes
#' @examples
#' e_recode()
e_recode <- function(dt, variable, old, new) {

data.table::setDT(dt)
old <- c(old)
new <- c(new)

lookup <- data.frame(old, new)

dt[lookup, on = c(x = "old"), x := new]

print(dt[, .N, keyby = variable])

}
