% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/boxes.R
\name{gradientBox}
\alias{gradientBox}
\title{AdminLTE2 gradient box}
\usage{
gradientBox(..., title = NULL, icon = NULL, gradientColor = NULL,
  boxToolSize = "sm", footer = NULL, width = 6, height = NULL,
  collapsible = TRUE, closable = FALSE, footer_padding = TRUE)
}
\arguments{
\item{...}{body content.}

\item{title}{box title.}

\item{icon}{header icon, if any. Should be written like "fa fa-times".}

\item{gradientColor}{color of the box: see here for a list of valid colors \url{https://adminlte.io/themes/AdminLTE/pages/UI/general.html}.}

\item{boxToolSize}{size of the toolbox: choose among "xs", "sm", "md", "lg".}

\item{footer}{the box footer.}

\item{width}{box width (between 1 and 12).}

\item{height}{box height.}

\item{collapsible}{If TRUE, display a button in the upper right that allows the user to collapse the box.}

\item{closable}{If TRUE, display a button in the upper right that allows the user to close the box.}

\item{footer_padding}{TRUE by default: whether the footer has margin or not.}
}
\description{
Create an enhanced box
}
\examples{
if (interactive()) {
 library(shiny)
 library(shinydashboard)
 shinyApp(
  ui = dashboardPage(
    dashboardHeader(),
    dashboardSidebar(),
    dashboardBody(
     gradientBox(
      title = "My gradient Box",
      icon = "fa fa-th",
      gradientColor = "teal", 
      boxToolSize = "sm", 
      footer = sliderInput(
       "obs", 
       "Number of observations:",
        min = 0, max = 1000, value = 500
       ),
      "This is a gradient box"
      ),
      gradientBox(
      title = "My gradient Box",
      icon = "fa fa-heart",
      gradientColor = "maroon", 
      boxToolSize = "xs", 
      closable = TRUE,
      footer = "The footer goes here. You can include anything",
      "This is a gradient box"
      )
    ),
    title = "gradientBox"
  ),
  server = function(input, output) { }
 )
}

}
\author{
David Granjon, \email{dgranjon@ymail.com}
}
