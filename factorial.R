num <- as.integer(readline(prompt = "Enter the number : "))

fact <- 1

for (i in 1:num){
  fact <- fact*i
}

print(paste("Factorial of ",num, " is ",fact))
