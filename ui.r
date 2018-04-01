#Install necessary packages if havent in the console
#install.packages("shiny")
#install.packages("shinydashboard")
#install.packages("leaflet")

#load necessary packages
library(shiny)
library(shinydashboard)
library(leaflet)

shinyUI(fluidPage(
  dashboardHeader(title = "Airplane tracker in 1 April 18:00 pm"),
  sliderInput("planeCount","Amount of Planes",1,8,2),
  leafletOutput("mymap") 
))
