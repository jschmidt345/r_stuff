# first function : if numeric, return input * 2, if not return 0
func_1 <- function(input){
  ifelse(is.numeric(input), return(input * 2), return(0))
}

# used generic if else

func_2 <- function(input){
  var <- func_1(input)
  if (var) {
    vec <- c(var, 5)
    return(max(vec))
  }
  return('invalid')
}

# added extra if statement that only returns the max when the result of func 1 is TRUE

test_1_var <- func_2('hello')
test_2_var <- func_2(3)
