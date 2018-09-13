# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.inject(0) {|s, i| s+i}
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    0
  elsif arr.length == 1
    arr[0]
  else 
    arr.max+arr.max(2)[1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  if arr.length == 1
    answer = false
  else
  for i in (0..arr.length-1) do
    for j in (i+1..arr.length-1) do
      if arr[i]+arr[j] == n
        answer = true
      end
    end
  end
end
  if answer == true
    true
  else 
    false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length ==0
    false
  else
case s.capitalize[0]
when /[^A-Z]/; false
when /[AEIOU]/; false
else; true
  end
end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
    if s.length ==0 
    false
  else
  case s
  when /[^01]/
    false
  else
    if s.to_i % 4 != 0
      false
    else
      true
    end
  end
end
end

# Part 3

class BookInStock
# YOUR CODE HERE
 def initialize(isbn, price)
   if isbn == '' || price<=0
     raise ArgumentError
   end
   @isbn  = isbn
   @price = price
 end
 
 def isbn
   @isbn
 end
 
 def price
   @price
 end
 
 def isbn=(new_isbn)
   @isbn = new_isbn
 end
 
 def price=(new_price)
   @price = new_price
 end
 
 def price_as_string
   sprintf('$%.2f', @price)
 end
end
