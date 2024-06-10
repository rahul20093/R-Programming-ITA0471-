get_user_info <- function() {
  name <- readline(prompt="Enter your name: ")
  age <- readline(prompt="Enter your age: ")
  print(paste("My name is", name, "and I am", age, "years old."))
  print(paste("R version:", R.version.string))
}
get_user_info()