# problem statement:
# Your quirky boss found out that you're a programmer and has a weird request about something they've been wondering for a long time.

# Write a function that, given:

# an amount of money
# a list of coin denominations
# computes the number of ways to make amount of money with coins of the available denominations.

# Example: for amount=44 (44¢) and denominations=[1,2,3][1,2,3] (11¢, 22¢ and 33¢), your program would output 44—the number of ways to make 44¢ with those denominations:

# 1¢, 1¢, 1¢, 1¢
# 1¢, 1¢, 2¢
# 1¢, 3¢
# 2¢, 2¢


# pseudocode conditions
# d = 14, [2,3, 5]
# 2*a + 3*b + 5*c = d
# a <= d/2
# b <=d/3
# c <= d/5