data(iris)

iris$IsSetosa <- ifelse(iris$Species == "setosa", 1, 0)

log_model <- glm(IsSetosa ~ Sepal.Width,
                 data = iris,
                 family = binomial)

new_data <- data.frame(Sepal.Width = c(3, 3.5, 4))
print(predict(log_model, new_data, type = "response"))

plot(iris$Sepal.Width, iris$IsSetosa,
     xlab = "Sepal Width",
     ylab = "Probability of Setosa",
     pch = 19,
     col = ifelse(iris$IsSetosa == 1, "blue", "red"))

x_vals <- seq(min(iris$Sepal.Width),
              max(iris$Sepal.Width),
                length.out = 100)

y_vals <- predict(log_model,
                  data.frame(Sepal.Width = x_vals),
                  type = "response")

lines(x_vals, y_vals, col = "black", lwd = 2)
