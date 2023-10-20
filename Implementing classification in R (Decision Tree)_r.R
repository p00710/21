install.packages("party")
library(party)
target <- Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
cdt <- ctree(target, iris)
table(predict(cdt), iris$Species)
cdt
plot(cdt, type = "simple")
