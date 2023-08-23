# 1. Use recursion to write a function that accepts an array of strings and
# returns the total number of characters across all the strings. For example,
# if the input array is ["ab", "c", "def", "ghij"], the output should be 10 since there
# are 10 characters in total.

# The subproblem here is the array minus the first element, and if I can count the number of 
# characters in the first element, then I can add that to the sum already calculated for the remaining 
# elements.

def total_characters(array)
  return 0 if array.empty?
  array[0].length + total_characters(array[1, array.length - 1])
end

total_characters(["ab", "c", "def", "ghij", "klmno"])

# 2. Use recursion to write a function that accepts an array of numbers and
# returns a new array containing just the even numbers.

# Take the first element, if it's even, add it to the new array, if it's odd, do nothing, 
#   if it's even though, just add it to the set of even numbers that already exist from the prior
#   array (subproblem)

def even_nums(array)
  return [] if array.empty?

  if array[0].even?
    even_nums(array[1, array.length - 1]).unshift(array[0])
  else 
    even_nums(array[1, array.length - 1])
  end
end

even_nums([1,2,3,4,5,6,7,8,9])


# 3. There is a numerical sequence known as “Triangular Numbers.” The
# pattern begins as 1, 3, 6, 10, 15, 21, and continues onward with the Nth
# number in the pattern, which is N plus the previous number. For example,
# the 7th number in the sequence is 28, since it’s 7 (which is N) plus 21
# (the previous number in the sequence). Write a function that accepts a
# number for N and returns the correct number from the series. That is, if
# the function was passed the number 7, the function would return 28.

# Ok, so whatever N is, it just gets added to the last number of the sequence.
# So for 7, the subproblem is 6 + the last number.

def triangular_num(n)
  return 1 if n == 1

  n + triangular_num(n-1)
end

triangular_num(6)

# 4. Use recursion to write a function that accepts a string and returns the
# first index that contains the character “x.” For example, the string,
# "abcdefghijklmnopqrstuvwxyz" has an “x” at index 23. To keep things simple,
# assume the string definitely has at least one “x.”

def first_x_at(string)
  return 0 if string[0] == "x"

  1 + first_x_at(string[1, string.length - 1])
  #careful for the off by 1 error here!!!
end

puts first_x_at("abcdefghijklmnopqrstuvwxyz")

