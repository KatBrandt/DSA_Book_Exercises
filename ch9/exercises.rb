# 4. Write a function that uses a stack to reverse a string. (For example, "abcde"
# would become "edcba".) You can work with our earlier implementation of
# the Stack class.

def reverse_string(str)
  stack = Stack.new
  str.each_char do |char|
    stack.push(char)
  end

  reverse = ""
  while stack.read
    reverse.concat(stack.pop)
  end
  reverse
end