#######################################################################
# COUNTING

# define the vectors for size, topping and order
size = c("S", "M", "L")
topping = c("pepperoni", "sausage", "meatball", "extra cheese")
order = c("deliver", "pick-up")

# keep track of the pizzas
pizzas = character(0)

# iterate over each value for each variable
for(i in 1:length(size)){
  for(j in 1:length(topping)){
    for(k in 1:length(order)){
      
      # create a pizza
      pizzas = rbind(pizzas, c(size[i], topping[j], order[k]))
    }
  }
}

# print out the pizzas; should have 24
pizzas

# count total number of large sausages; should get 2
#   we divide by 3 because rows are length 3, and we want
#   to convert back to number of rows (i.e., number of pizzas)
pizzas[pizzas[ ,1] == "L" & pizzas[ ,2] == "sausage"]
length(pizzas[pizzas[ ,1] == "L" & pizzas[ ,2] == "sausage"]) / 3

#######################################################################
# FACTORIAL: counting the number of ways to order n elements without replacement

# generate all of the possible permutations
install.packages("combinat")
perms = combinat::permn(c("A", "B", "C", "D", "E", "F", "G"))

# look at the first few permutations
head(perms)

# should get factorial(7) = 5040
length(perms)

# example
# generate the committees (people labeled 1 to 5)
install.packages("gtools")
committees = gtools::combinations(n = 5, r = 3)

# should get choose(5, 3) = factorial(5)/(factorial(3)*factorial(2)) = 10 committees
committees
#######################################################################
