# pattern_drawing.py

"""
Objective:
Utilize while loops and nested for loops to draw a simple text-based square pattern.

Instructions:
- Prompt the user for a positive integer (size of the square).
- Use a while loop for rows.
- Use a nested for loop to print asterisks (*) across each row.
"""

# Prompt user for the size of the pattern
size = int(input("Enter the size of the pattern: "))

# Initialize row counter
row = 0

# Use while loop for rows
while row < size:
    # Use for loop to print each column in the row
    for col in range(size):
        print("*", end="")  # print without newline
    print()  # move to the next row after finishing one row
    row += 1
