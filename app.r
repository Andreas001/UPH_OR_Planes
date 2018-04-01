#install necessary packages in the console
#install.packages("shiny")
#install.packages("shinydashboard")
#install.packages("leaflet") serves to display rendered map in the UI
#install.packages("jsonlite")

#load necessary packages
library(shiny)
library(shinydashboard)
library(leaflet)
library(jsonlite)

#categorize
airPlanes = read.csv("AircraftList1April1800.csv")

#Server
shinyServer(function(input, output) 
{
  output$mymap <- renderLeaflet({
    leaflet(data = airPlanes[1:input$planeCount,]) %>% addTiles() %>%
      addMarkers(~Longtitude, ~Latitude, popup = ~as.character(Model), label=~as.character(Airlines))
})
})

#UI
shinyUI(fluidPage(
  dashboardHeader(title = "Airplane tracker in 1 April 18:00 pm"),
  sliderInput("planeCount","Amount of Planes",1,8,20),
  leafletOutput("mymap")
))
