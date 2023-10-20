install.packages("e1071")
library(e1071)

data <- read.csv("weather.csv", header = TRUE)
weather_df <- as.data.frame(data)
weather_df

Naive_Bayes_Model <- naiveBayes(play ~ ., data = weather_df)
Naive_Bayes_Model

NB_Predictions <- predict(Naive_Bayes_Model, weather_df)
table(NB_Predictions, weather_df$play, dnn = c("Prediction", "Actual"))

nb_laplace1 <- naiveBayes(play ~ ., data = weather_df, laplace = 1)
laplace1_pred <- predict(nb_laplace1, weather_df, type = "class")
table(laplace1_pred, weather_df$play, dnn = c("Prediction", "Actual"))
