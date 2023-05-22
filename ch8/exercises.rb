# 1. Write a function that returns the intersection of two arrays. The intersection
# is a third array that contains all values contained within the first two
# arrays. For example, the intersection of [1, 2, 3, 4, 5] and [0, 2, 4, 6, 8] is [2, 4].
# Your function should have a complexity of O(N). (If your programming
# language has a built-in way of doing this, don’t use it. The idea is to build
# the algorithm yourself.)

def intersection(arr1, arr2)
  index = {}
  arr1.each do |num|
    index[num] = true
  end

  arr2.find_all do |num|
    index[num]
  end
end

# test 
first = [1,2,3,4,5]
second = [0,2,4,6,8]
expected = [2,4]
answer = intersection(first, second)
puts "#1. #{answer == expected}"

# 2. Write a function that accepts an array of strings and returns the first
# duplicate value it finds. For example, if the array is ["a", "b", "c", "d", "c", "e",
# "f"], the function should return "c", since it’s duplicated within the array.
# (You can assume that there’s one pair of duplicates within the array.)
# Make sure the function has an efficiency of O(N).

def find_duplicates(letters)
  store = {}
  letters.each do |letter|
    if store[letter]
      return letter
      break
    else
      store[letter] = true
    end
  end
end

#test
array = %w(a b c c d e f)
expected = "c"
answer = find_duplicates(array)
puts "#2. #{answer == expected}"

# 3. Write a function that accepts a string that contains all the letters of the
# alphabet except one and returns the missing letter. For example, the string,
# "the quick brown box jumps over a lazy dog" contains all the letters of the alphabet
# except the letter, "f". The function should have a time complexity of O(N).

def missing_letter(string)
  letter_count = Hash.new(0)
  string.chars.each do |letter|
    letter_count[letter] += 1
  end
  ("a".."z").find do |alpha|
    letter_count[alpha] == 0
  end
end

#test
str = "the quick brown box jumps over a lazy dog"
expected = "f"
answer = missing_letter(str)
puts "3. #{answer == expected}"

# 4. Write a function that returns the first non-duplicated character in a string.
# For example, the string, "minimum" has two characters that only exist
# once—the "n" and the "u", so your function should return the "n", since it
# occurs first. The function should have an efficiency of O(N).

def first_non_dup(string)
  counter = Hash.new(0)
  string.chars.each do |letter|
      counter[letter] += 1
  end
  counter.find do |letter, count|
    count == 1
  end.first
end

# test
str = "minimum"
expected = "n"
answer = first_non_dup(str)
puts "4. #{expected == answer}"

