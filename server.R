makeapredict<-function(x,y,z,c){
    predictinput<-data.frame(cyl=x,disp=y,wt=z,am=as.numeric(z))
    predict(lm(mpg~factor(cyl)+disp+wt+am,data=mtcars),newdata=predictinput)[[1]]
}

shinyServer(
    function(input,output){
        output$estimate<-renderPrint({makeapredict(input$cyl,input$disp,input$weight,input$am)})
    }
 
)