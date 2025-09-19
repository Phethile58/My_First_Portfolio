# multiplication_table.py

"""
Objective:
Use a for loop to generate and print the multiplication table for a given number.

Instructions:
- Prompt the user for a number.
- Use a for loop to generate the multiplication table from 1 to 10.
- Print each result in the format: "X * Y = Z".
"""

# Prompt User for a Number
number = int(input("Enter a number to see its multiplication table: "))

# Generate and Print the Multiplication Table
for i in range(1, 11):  # Loop from 1 to 10
    result = number * i
    print(f"{number} * {i} = {result}")
