library(party)
set.seed(123)  # Set a random seed for reproducibility
indexes <- sample(1:150, 99)  # Select ~2/3 of the instances of the iris dataset
iris_train <- iris[indexes, ]
iris_test <- iris[-indexes, ]
target <- Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width
cdt <- ctree(target, data = iris_train)  # Training of the decision tree
table(predict(cdt, newdata = iris_test), iris_test$Species)
