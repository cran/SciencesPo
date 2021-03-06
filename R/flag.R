#' @encoding UTF-8
#' @title Add an "id" Variable to a Dataset
#'
#' @description Many functions will not work properly if there are duplicated ID variables
#' in a dataset. This function is a convenience function for \code{.N} from the "data.table" package to create an \code{.id}.
#' variable that when used in conjunction with the existing ID variables,
#' should be unique.
#'
#' @param .data The input \code{data.frame} or \code{data.table}.
#' @param id.vars The variables that should be treated as ID variables. Defaults to \code{NULL}, at which point all variables are used to create the new ID variable.
#' @return The input dataset (as a \code{data.table}) if ID variables are unique, or the input dataset with a new column named "\code{.ID}".
#' @examples
#' df <- data.frame(A = c("a", "a", "a", "b", "b"),
#'                  B = c(1, 1, 1, 1, 1), values = 1:5);
#' df
#'
#' df = Flag(df, c("A", "B"))
#'
#' df <- data.frame(A = c("a", "a", "a", "b", "b"),
#'                    B = c(1, 2, 1, 1, 2), values = 1:5)
#' df
#' (df <- Flag(df, 1:2) )
#'
#' @importFrom data.table := is.data.table as.data.table
#' @export
`Flag` <- function(.data, id.vars = NULL) {
  if (!is.data.table(.data)) .data <- as.data.table(.data)
  else .data <- copy(.data)
  if (is.numeric(id.vars)) id.vars <- names(.data)[id.vars]
  if (is.null(id.vars)) id.vars <- names(.data)
  if (any(duplicated(.data, by = id.vars))) {
    .data[, `.ID` := sequence(.N), by = id.vars]
  } else {
  .data
  }
}
NULL



