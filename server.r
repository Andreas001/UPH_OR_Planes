#install necessary packages in the console
#install.packages("shiny")
#install.packages("leaflet")
#install.packages("jsonlite")

#load necessary packages
library(shiny)
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
