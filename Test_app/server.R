#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
vln<-as.data.frame(read.csv("vilnius_pop.csv", header = TRUE, sep = ","))
vln$Growth.Rate    <- as.numeric(sub("%", "", vln$Growth.Rate))
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    
    
    bins <- seq(min(vln$Growth.Rate ), max(vln$Growth.Rate ), length.out = input$bins + 1)
    
    # draw the histogram with the specified number of bins
    hist(vln$Growth.Rate , breaks = bins, col = 'blue', border = 'grey',xlab = "Growth per year, %",main="Growth rate histogram")
    
  })
  output$distPlot2<-renderPlot({
  plot(vln)  
  })  
  output$view <- renderTable({
    head(vln, n = input$years)
  })
  output$summary <-renderPrint({
    summary(vln)
  }) 
})
