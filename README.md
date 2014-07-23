ShinyApp
========

#Shiny app for stock forecasting.#
In this repository you can find the server.R and ui.R files from the ShinyStockApp.
Human psychology is an important factor when trading stocks. That is why the emotions and the will of the traders determine in some sense the future of the stock.
This app predicts the future behaviour of the Stock just calculating the ratio of people predicting that the stock will go up, the stock will go down or the stock will remain equal.
You must select your estimation and click the "Submit" button. The ratios will be updated according to the entered value.
You should install and load  both libraries "shiny" and "shinyapps" before run locally this app in  R.  If you have not installed the libraries you  can install both libraries in the usual way from your R console: install.packages("shiny")
install.packages("shinyapps")
Then run:
library(shiny)
library(shinyapps) .
At this point you will be able to run the app locally running runApp("ShinyApp") from the folder containing the files server.R and ui.R.
Note: For some reason if you run runApp() in R the app will run ok, but if you try deployApp() the app will update the values in a wrong way.
