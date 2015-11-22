
library(shiny)
shinyUI(fluidPage(
  titlePanel("Iris Species"),
  
  sidebarLayout(
    sidebarPanel(
    
           sliderInput("slider1", label = h3("Sepal Length"),
                       min = 0, max = 10, value = 0, step=0.1),
           sliderInput("slider2", label=h3("Sepal Width"),
                       min = 0, max = 5, value = 0, step=0.1),
           sliderInput("slider3", ,label=h3("Petal Length"),
                       min = 0, max = 10, value = 0, step=0.1),
           sliderInput("slider4", label=h3("Petal Width"),
                      min = 0, max = 5, value = 0, step=0.1)
    ),
    
    mainPanel(
      
      tabsetPanel(
        tabPanel("Introduction",
               br(),
              p("This app predicts the specie of an Iris plant based on the basis of
                 four characteristics: 
                 Sepal length, Sepal Width, Petal length and Petal Width. "),
              h4(" The Prediction Model "),
              p("The model is built using the the iris data set collected by  Ronald Fisher 
                 in 1936. This data set consists of 50 
                  samples from each of three 
                 species of Iris (Iris setosa, Iris virginica and Iris versicolor). "),
              p(" This is a random walk model with aboout 94 percent accuracy."),
              h4("How it works"),
               p(" From the sliders on the left, select the value for the four different
                 characteristics."),
               p(" The result will be displayed on the results tab i.e, if the iris plant 
                 with the selected characteristics is Iris setosa, Iris virginica or Iris 
                 versicolor")
        ),
        tabPanel( "Result",    
              br(),
              br(),
              br(),
              textOutput("Result"),
              br(),
              br(),
              br(),
              br(),
             img(src = "images.jpg")
             
                        )
    
))
))
)