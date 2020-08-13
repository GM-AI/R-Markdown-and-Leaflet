#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Vilnius population data explorer"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
       numericInput(inputId = "years",
                    label = "Number of years to view:",
                    value = 20),
       tableOutput("view"),
       sliderInput("bins",
                   "Number of bins:",
                   min = 1,
                   max = 100,
                   value = 4)
    ),
    
    
    # Show a plot of the generated distribution
    mainPanel(
       verbatimTextOutput("summary"),
       plotOutput("distPlot2"),
       plotOutput("distPlot")
       
    )
  )
))
