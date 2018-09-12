# When done, submit this entire file to the autograder.

# Part 1
# Arrays, Hashes, and Enumerables

def sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  else
    ans = 0
    for i in arr
      ans = ans + i
    end
    return ans
  end
end

def max_2_sum arr
  # YOUR CODE HERE
  if arr.length == 0
    return 0
  elsif arr.length == 1
    return arr[0]
  else
    max1 = arr.sort[-1]
    max2 = arr.sort[-2]
    sum = max1 + max2
    return sum
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  dict = {}
  for i in 0..(arr.length-1)
    if dict.key?(arr[i])
      return true
    end
    dict[n-arr[i]] = i
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name.to_s
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s.length == 0
    return false
  end
  arr = ["A", "E", "I", "O", "U"]
  first = s.to_s[0].upcase
  if arr.include? first
    return false
  end
  if first =~ /[[:alpha:]]/
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if not(s.is_a? Integer) and !(s =~ /\A[-+]?[0-9]+\z/)
    return false
  end
  s = s.to_i
  if s%4 == 0
    return true
  else
   return false
  end
end

# Part 3

class BookInStock 
  attr_accessor :isbn
	attr_accessor :price
	
	def initialize(isbn,price)
		@isbn = isbn
		@price = price
		if @price <= 0 or @isbn.empty? 
			raise ArgumentError
		end
	end

	def price_as_string
		return "$#{'%.2f' %  @price}"
	end

end
