# vectors of vectors = bigger vector

x <- c(1 : 3)
y <- c(1, 7, 10)
z <- c(x, y)


ID <- c(1,3)
z[ID]

#indicies where z is greater than 5
z[ z > 5 ]

test <- c(2, 4, 6, 8, 10)
z[ which(test == 10) ] 

# %in%
z[z %in% test]
# not in
z [ ! z %in% test ]

text <- c('a', 'b', 'c')
numbers <- c(1 : 10)

# Testing Conditions
if (is.character(text)) {
  print(text)
}