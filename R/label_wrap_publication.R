#' wrap long label for ggplot
#'
#' @param width default width for label
#' @export
#' @examples
#' scale_x_discrete(labels = label_wrap_Publication(20))
label_wrap_publication <- function(width) {
    function(x) {
        lapply(strwrap(x, width = width, simplify = FALSE), paste, collapse="\n")
    }
}