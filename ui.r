library(shiny)
library(shinydashboard)
library(leaflet)
## leafletOutput is used at the ui side to display the rendered map.

shinyUI(fluidPage(
  dashboardHeader(title = "James Adhitthana's Airplane Tracker (MARCH 31 6:00pm WIB) | HOVER to see the airlines and CLICK to see the airplane model!"),
  sliderInput("planeCount","Amount of Planes",10,5000,20),
  leafletOutput("mymap")
  
))