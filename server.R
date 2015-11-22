

library(datasets)

data(iris)

#install.packages("caret", dependencies=TRUE)
#library(caret)
library( randomForest )

###########Sampling data
#set.seed(224)
#trainIndex <- createDataPartition(iris$Species, p=0.80, list=FALSE)
#data_train <- iris[ trainIndex,]
#data_test <- iris[-trainIndex,]

##########
m <-randomForest( Species ~ ., data=iris )


##########################################


library(shinyapps)


shinyServer(
  function(input, output) {
   
    output$Result <- renderPrint({
                  y<-cbind(input$slider1,input$slider2,input$slider3,input$slider4)
        colnames(y)<-names(iris[1:4])
                  z<-predict(m, newdata=y)
            paste("Iris Specie:",z)
      
          })
    
  }
)
