str <- as.character(readline(prompt = "Enter the string to be checked for palindrome : "))
rev <- ""

for(i in strsplit(str, "")[[1]]){
  rev <- paste0(i, rev)
}

if(rev == str){
  print(paste(str, "is palindrome"))
} else {
  print(paste(str, "is not palindrome"))
}
