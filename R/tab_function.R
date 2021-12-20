
#' Tab(ulate), similar to Stata (orders by x, or x,y). Requires data.table.
#' Data argument defaults to dt, for easy usage tab("x").
#' @param x Variable to be tabulated
#' @param y Optional second variable
#' @param df the dataframe
#' @keywords tab, table, tabulate
#' @importFrom data.table .N
#' @export
#' @return Table of (N) cases ordered by x or x, y.
#' @examples
#' tab()
tab <- function(x = NULL, y = NULL, df = dt) {
    df[, .N, keyby = c(x, y)]
}

