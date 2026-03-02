numbers <- c(22,1,54,20,22,14,1,78,65,31,1,3,1,2)
n <- length(numbers)

sum_val <- 0
for (i in numbers){
  sum_val <- sum_val + i
}
mean_val <- sum_val / n
print(paste("Mean   : ", mean_val))

sorted_numbers <- sort(numbers)
mid <- 0 

if (n %% 2 != 0){
  mid <- sorted_numbers[((n + 1) / 2)] 
} else {
  median1 <- sorted_numbers[(n / 2)]
  median2 <- sorted_numbers[((n / 2) + 1)]
  mid <- (median1 + median2) / 2
}
print(paste("Median : ", mid))

mode_val <- numbers[1]
max_count <- 0

for (i in numbers) {
  current_count <- 0
  for (j in numbers) {
    if (j == i) {
      current_count <- current_count + 1
    }
  }
  if (current_count > max_count) {
    max_count <- current_count
    mode_val <- i
  }
}
print(paste("Mode   : ", mode_val))