makeapredict<-function(x,y,z){
    predictinput<-data.frame(disp=x,wt=y,am=as.numeric(z))
    predict(lm(mpg~disp+wt+am,data=mtcars),newdata=predictinput)[[1]]
}

shinyServer(
    function(input,output){
        output$estimate<-renderPrint({makeapredict(input$disp,input$weight,input$am)})
    }
 
)