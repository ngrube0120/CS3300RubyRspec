# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # there exists a defined method for summing all elements in an array
  arr.sum
end

def max_2_sum arr
  bignum = 0
  bignum2 = 0
  smallnum = 0
  result = 0

  if arr.size > 0
    # check for negatives
    arr.each do |num|
      if num < smallnum
        smallnum = num
      end
    end
    # if we find a negative number, set it as our initial comparison
    bignum = smallnum

    # then find the largest two
    arr.each do |num|
      if num > bignum
        bignum2 = bignum
        bignum = num
      elsif num > bignum2
        bignum2 = num
      end
    end
  end

  # return our largest two
  result = bignum + bignum2
end

def sum_to_n? arr, n
  num1 = 0
  num2 = 0
  result = false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
