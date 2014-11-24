
library(shiny)
library(shinysky)

shinyUI(fluidPage(theme="bootstrap.css",
  title="Visualizing inter-state migration in Australia",
  h3("Visualizing inter-state migration in Australia"),
#   jscolorInput("colorid"),
  #can't send default colour :(
#   uiOutput('myPanel'),
  fluidRow(
    column(4, p("Select line colour at source: "),
           jscolorInput("couleur_source")),
    column(4, p("Select line colour at destination: "),
           jscolorInput("couleur_destination")),
    column(4, p("Select line colour at mid: "),
           jscolorInput("couleur_mid"))),
  fluidRow(
    column(4, p("Select ocean colour: "),
           jscolorInput("couleur_ocean")),
    column(4, p("Select boundary outline colour: "),
           jscolorInput("couleur_boundary")),
    column(4, p("Select landmass colour: "),
           jscolorInput("couleur_landmass"))),
  fluidRow(
    column(12,
           actionButton("goButton", "Yo, click here to draw map",
                        styleclass="success", block=TRUE)
           )),
  fluidRow(
    column(12,
           p("Yo, the map will appear below"),
            plotOutput("mapPlot")
           ))
))
