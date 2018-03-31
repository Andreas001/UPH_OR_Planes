library(shiny)
library(leaflet)
library(jsonlite)
jamesAirPlanes=read.csv("JamesAircraftList March31 CONVERTED.csv")


shinyServer(function(input, output) {
  output$mymap <- renderLeaflet({
    leaflet(data = jamesAirPlanes[1:input$planeCount,]) %>% addTiles() %>% #Total of 5591 airplanes in the CSV file
    #leaflet(data = jamesAirPlanes[1:5000,]) %>% addTiles() %>% #Total of 5591 airplanes in the CSV file
      addMarkers(~JamesLong, ~JamesLat, popup = ~as.character(JamesPlaneModel), label=~as.character(JamesPlaneAirlines))
    
  })
  
})