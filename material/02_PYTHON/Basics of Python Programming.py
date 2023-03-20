# we can get the help for all the functions as below
# we wil use the help() to know more about the pytho objects, functions or any
# Getting Help
# We have already seen how to get help earlier.
# Let’s deep dive to understand more about getting help using Python.
# We can get help either in Python CLI or Jupyter Notebook.
# Help can be launched by calling help()
# It will launch CLI and we can enter a class name or function name.
# We can also get help on a class or function by passing them to help function interactively.
# We will be able to get help by passing objects as well.
# In cases like str it will try to get the help on the value of variable.

print("------------------------------------Data Types - Commonly used---------------------")

help(int)
print("------------------------------------------------------------------------------------")
print(help(str))
print("------------------------------------------------------------------------------------")
help(len)
print("------------------------------------------------------------------------------------")

# Variables and Objects
# In Python we need not define data types for variables or objects.
# Data types are inherited based up on the values assigned to the variables.
# We can check the type of the variable or object using type function.
# Python is interpreter based programming language which means
# it does not go through compilation and hence
# data types are not validated until run time.
# Python variables or objects are dynamically typed. In case of compiler based programming languages
# such as Java, Scala etc variables or objects are statically typed.
# We can specify data types for variables or objects starting from Python 3.
# However, it is only informational and does not enforce.
print("------------------------------------Variables and Objects----------------------------")
i = 0
print("type of i :- ", type(input()))
print(type(i) == int)
j: int = 10  # we can define the data type as well
print("type of j :- ", type(j))
j = "Hello"
print(j)
print("type of j :- ", type(j))
print(type(j) == str)

# Data Types - Commonly used
# Python has several data types which are commonly used.
# There are advanced data types such as Data Frames as part of modules such as pandas.
# Numeric - int, float, complex
# Alpha Numeric - str
# Collections
# list
# set
# dict
# tuple
# type(VARIABLE_NAME) returns the data type of the variable.
# All the data types are nothing but classes.
# We can type cast data types by invoking constructor.

print("------------------------------------Data Types - Commonly used---------------------------")
s = '10'
print(s)
print("type of s :- ", type(s))
print(type(int(s)))
print(int(s))  # This is called typecasting(conversion of data type)

# Operators in Python
# As any programming language Python supports all types of Operations.
# There are several categories of operators.
# For now, we will cover Arithmetic and Comparison Operators.
# Arithmetic Operators
# Addition (+)
# Subtraction (-)
# Multiplication (*)
# Division (/)
# Mod (%) returns reminder
# + is also used for concatenation of strings.
# Comparison Operators - typically return boolean value (True or False)
# Equals (==)
# Not Equals (!=)
# Negation (! before expression)
# Greater Than (>)
# Less Than (<)
# Greater Than or Equals To (>=)
# Less Than or Equals To (<=)

print("------------------------------------Operators in Python------------------------------------")

# Create variables or objects of int, float.
# Create 2 variables i1 and i2 with values 10 and 20 respectively.
# Add the variables and assign the result to res_i. Check the type of res_i.
i1 = 10
i2 = 20
res_i = i1 + i2
print(res_i)
print("type of res_i :- ", type(res_i))

# Create 2 variables f1 and f2 with values 10.5 and 15.6 respectively.
# Add the variables and assign the result to res_f. Check the type of f1, f2 and res_f.
f1 = 10.5
f2 = 15.6
res_f = f1 + f2
print(res_f)
print("type of res_f :- ", type(res_f))

# Create 2 variables v1 and v2 with values 4 and 10.0 respectively.
# Add the variables and assign the result to res_v. Check the type of v1, v2 and res_v.

v1 = 4
v2 = 10.0
res_v = v1 + v2
print(res_v)
print("type of res_v :- ", type(res_v))  # The type of the res_v will be FLOAT.

# what will happen if we try to concatenate string with float or any other data type
f1 = 10.1
f2 = '20.2'
# res_f = f1 + f2  # throws operand related to error as there is no overloaded function + between float and string
res_f = f1 + float(f2)
print(res_f)
print("Type of res_f :- ", type(res_f))

# Create object or variable s of type string for value Hello World and print on the screen.
# Check the type of s.

s = "Hello 'World'"
print(s)
print("Type of s :- ", type(s))

s1 = "Hello"
s2 = "World"
print(s1 + " " + s2)  # we can concatenate 2 string with the + operator
# To concatenate string with other data type we need to either typecast them or we need to use .format
# benefit to use this method is we need not typecast any of the variable.
# ways to use .format method
# way 1

str = '{s3} {s4}'
s3 = "Hello"
s4 = 1
print(str.format(s3=s3, s4=s4))

# Way 2 (most use and modern way to print two variable together)
print("The result is {} {}".format(s3, s4))

# Compare whether i1 and i2 are equal and assign it to a variable res_e, then check the type of it.

i1 = 10
i2 = 20
res_e = i1 == i2
print(res_e)
print("Type of res_e :- ", type(res_e))

res_e = i1 < i2
print(res_e)
print("Type of res_e :- ", type(res_e))

print("------------------------------------Conditionals in Python------------------------------------")
# Conditionals
# We typically use “if else” for conditionals.
# Let us perform a few tasks to understand how conditionals are developed.

# Create a variable i with 5. Write a conditional to print whether i is even or odd.


i = 5

if i % 2 == 0:
    print("number {} is even".format(i))
else:
    print("number {} is odd ".format(i))

print("Method 2 for conditionals")
# The below ternary operator is used in the other programming languages but it won't work in python
# (i % 2 == 0) ? print("number {} is even" .format(i)) : print("number {} is odd " .format(i))
# In Python we will use ternary operator as below

print("number {} is even".format(i)) if i % 2 == 0 else print("number {} is odd ".format(i))

# improvise it to check if i is 0 and print
# we will use user input in this
# In Python user input will always be a string so we need to typecast it to int as below
i = int(input("Enter a number "))
if i == 0:
    print("Number i is 0")
elif i % 2 == 0:
    print("number i = {} is even".format(i))
else:
    print("number i = {} is odd ".format(i))

# Object of type None is special object which represent nothing. At times we need to check against None

n = None
print('Not None') if n else print(n)

print("------------------------------------Loops in Python------------------------------------")

for i in range(5, 11): print(i)

import calendar as cal

print(list(cal.month_name))

for month in cal.month_name:
    print(month)

print("------------------------------------OS Command in Python------------------------------------")

import os as os

print(os.getcwd())
s = os.environ.get('PATH').split(sep=';')
print(len(s))
for i in s:
    print(i)

