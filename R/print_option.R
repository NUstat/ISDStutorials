#' @title Tutorial print option
#'
#' @description
#' Print the tutorial. Should load print-file.css into tutorial yaml
#' for nice looking document.
#' @param id ID to link to ui
#' @param label Label to appear on the print button
#'
#' @export
#print grade
print_ui <- function(id, label = "pdf") {
  ns <- NS(id)
  #Add css and js print formatting
  fluidPage(
    htmltools::attachDependencies(
      "Print",
      htmltools::htmlDependency(
        name = "Print",
        version = utils::packageVersion("ISDStutorials"),
        src = system.file("www", package = "ISDStutorials"),
        script = "print-format.js",
        stylesheet = "print-format.css",
        all_files = TRUE
      )
    ),
    actionButton("printButton", label = label)

  )
}
