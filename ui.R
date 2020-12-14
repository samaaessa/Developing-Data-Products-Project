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
    titlePanel("Developing Data Products Project"),

    # Sidebar with a slider input for number of bins
    sidebarLayout(
        sidebarPanel(
            selectInput(
                inputId =  "X", 
                label = "Select X axis variable:", 
                choices = c("mathScore","readingScore","writingScore"),
                selected = "mathScore"
            ),
            selectInput(
                inputId =  "Y", 
                label = "Select Y axis variable:", 
                choices = c("mathScore","readingScore","writingScore"),
                selected = "readingScore"
            ),
            radioButtons(
                inputId =  "color", 
                label = "Select groupping by variable:", 
                choices = c("gender","race","parentalLevelOfEducation","testPreparationCourse"),
                selected = NULL
            )
        ),
        # Show a plot 
        mainPanel(
            plotOutput("plot", width = "90%", height = "700px")
        )
    )
))


