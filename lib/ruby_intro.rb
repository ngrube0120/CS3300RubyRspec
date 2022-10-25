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
  result = false

  # nested for loop to iterate through array.
  for i in 0..(arr.size - 2) # start at first element, go to second to last element
    for j in (i + 1)..(arr.size - 1) # start at the next element from our current one, iterate through to end
      if (arr.at(i) + arr.at(j)) == n
        # if our two elements add up to n, set result to true
        result = true
      end
    end
  end

  return result
end

# Part 2

def hello(name)
  result = "Hello, #{name}"
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
