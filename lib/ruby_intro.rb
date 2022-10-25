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
  # simply return our string with our concatenated name
  result = "Hello, #{name}"
end

def starts_with_consonant? s
  startingLetter = 0
  result = false
  if s.length > 0
    # grab the first letter of our input string
    startingLetter = s[0].upcase
    
    # use a case to determine if our first letter is any consonant
    case startingLetter
    when "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Y", "Z"
      result = true
    else
      result = false
    end
  end

  return result
end

def binary_multiple_of_4? s
  isBinary = false
  highestPower = s.length - 1
  value = 0
  result = false

  # check if our input is binary
  for i in 0..(s.length - 1)
    case s[i]
    when "0", "1", " "
      isBinary = true
    else
      isBinary = false
      break
    end
  end

  # if it is binary, convert it to decimal and use modulus to determine if it is divisible by 4
  if isBinary
    for i in 0..(s.length - 1)
      if s[i] == "1"
        value += 2 ** highestPower
      end
      highestPower -= 1
    end

    if (value % 4) == 0
      result = true
    end
  end

  return result
end

# Part 3

class BookInStock
  def initialize(isbn, price) # constructor for BookInStock
    @isbn = isbn
    @price = price

    if @isbn.class != String # raise an ArgumentError if isnb is either not a string, or a string with length 0
      raise ArgumentError
    elsif @isbn.length == 0
      raise ArgumentError
    end

    if @price <= 0 # raise an argument error if price is less than or equal to zero
      raise ArgumentError
    end
  end

  def isbn # setter for isbn
    @isbn
  end

  def isbn=(isbn) # setter for isbn
    @isbn = isbn
  end

  def price # getter for price
    @price
  end

  def price=(price) # setter for price
    @price = price
  end

  def price_as_string
    # truncate our float to two decimal places using format()
    result = format('$%<value>0.2f', value: price)
  end
end
