data(iris)

model <- lm(Sepal.Length ~ Sepal.Width, data = iris)

print(summary(model))

new_data <- data.frame(Sepal.Width = c(3, 3.5, 4))
print(predict(model, new_data))

plot(iris$Sepal.Width, iris$Sepal.Length,
     xlab = "Sepal Width",
     ylab = "Sepal Length",
     pch = 19,
     col = "blue")

abline(model, col = "red", lwd = 2)
