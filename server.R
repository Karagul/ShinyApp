library(shiny)
down<<-0;
equal<<- 0;
up<<-0;
total_entries <<- 1

down_var <- function(variation){
  
  if(variation<0){
    down <<- down + 1
  }
  if(is.nan(down/(total_entries))){
    return(0)
  } else{
  return(down/(total_entries))
  }
}

equal_var <- function(variation){ 
  if(variation==0){
    equal <<- equal + 1
  }
  if(is.nan(equal/(total_entries))){
    return(0)
  } else{
  return(equal/(total_entries))
  }
}  

  
up_var <- function(variation){ 
  if(variation>0){
   up <<- up + 1
  }
  if(is.nan(up/(total_entries))){
    return(0)
  } else{
  return(up/(total_entries))
  }
}
total_var <- function(variation){ 
  total_entries<<-total_entries+1
return(total_entries-1 )
}

 

shinyServer(
  
  
  function(input, output) {
   
        equal<<-equal-1
        total_entries<<-total_entries-1
  
        output$inputValue_ <- renderText({isolate({input$variation})*input$Submit/input$Submit})
        output$down_ <- renderText({down_var(isolate({input$variation}))*input$Submit/input$Submit})
        output$equal_ <- renderText({equal_var(isolate({input$variation}))*input$Submit/input$Submit})
        output$up_ <- renderText({up_var(isolate({input$variation}))*input$Submit/input$Submit})
        output$total_ <- renderText({total_var(isolate({input$variation}))*input$Submit/input$Submit})
  }
)
