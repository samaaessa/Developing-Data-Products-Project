#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#
#Load libraries   
library(ggplot2)
library(shiny)

# Define server logic

shinyServer(function(input, output) {
    
    data <- read.csv("StudentsPerformance.csv")
    names(data) <- c("gender","race","parentalLevelOfEducation","lunch","testPreparationCourse","mathScore","readingScore","writingScore")
  
    
    output$plot <- renderPlot({
        # transform the character name into symbol
        X <- sym(input$X)
        Y <- sym(input$Y)
        col<- sym(input$color)
        # use symbole unquoting with !!
        ggplot(data= data, aes(x= !! X, y= !! Y))+
            geom_point(aes(color= !! col))
    })
    
})
