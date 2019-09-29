# conditionals : must handle NA vals, and check for data type

my_func2 <- function(input_vector){
  
    na_check <- (is.na(input_vector))
    
    na_location <- which(na_check)
    
    fin <- (input_vector[na_location] = 0)
    
    num_chec <- (is.numeric(input_vector))
    
    if (num_chec) {
      n <- length(input_vector)
      mean_input <- mean(input_vector) 
      median_input <- median(input_vector)
      max_input <- max(input_vector)
      min_input <- min(input_vector)
      std_input <- sd(input_vector)
      
      return(c('length =', n, 
               'mean = ', mean_input,
               'median = ', median_input,
               'max = ', max_input,
               'min = ', min_input,
               'stdev = ', std_input))
    }
    return('Error, not numeric')
}

test <- my_func2(c(1, 2, 4, NA, 'hell'))


