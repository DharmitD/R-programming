print("Select operation")
print("1.Add")
print("2.Subtract")
print("3.Multiply")
print("4.Divide")

choice = as.integer(readline(prompt = "Enter choice[1/2/3/4]: "))
num1 = as.integer(readline(prompt = "Enter first number: "))
num2 = as.integer(readline(prompt = "Enter second number: "))
operator <- switch(choice, "+", "-", "*", "/")

result <-
  switch(choice,
         num1 + num2,
         num1 - num2,
         num1 * num2,
         num1 / num2)

print(paste(num1, operator, num2, "=", result))

