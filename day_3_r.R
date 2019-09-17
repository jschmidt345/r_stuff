x <- 5
y <-'i'

test1 <- ifelse(is.numeric(x), 'true', 'false')
test2 <- ifelse(is.character(y), 'true', 'flase')

exp <- function(input){
  result <- input ** 2
  return(result)
}

func_2 <- function(input){
  if (is.numeric(input)) {
    result <- exp(input) + 1
  }
  return(result)
}


output <- func_2(4)

func <- function(input){
  ifelse(is.numeric(input), return(func_2(input)), return(1 + 1))
}

x <- func(10)