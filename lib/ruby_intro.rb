# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  sum=0
  arr.each{|a| sum+=a}
  return sum
end

def max_2_sum arr
  if arr == []
    return 0
  elsif arr.length==1
    return arr[0]
  else
    max1=arr.max
    original_len=arr.length
    arr.delete_if {|i| i == max1 } 
    if arr.length <= original_len-2
      return max1*2
    else
      return max1 + arr.max
    end
  end
end

def sum_to_n? arr, n
  if arr==[]
    return false
  elsif arr.length==1
    return false
  end
  #ref=[]
  #arr.each{|a| ref+=[n-a]}
  #if (ref&arr).length==0
  #  return false
  #else
  #  return true
  #end
  i=0
  while i< arr.length
    j=1
    while i+j < arr.length
     if arr[i]+arr[i+j] == n
       return true
     end
     j+=1
    end
    i+=1
  end
  return false
end

# Part 2

def hello(name)
  return "Hello, "+name
end

def starts_with_consonant? s
  exist = ([s[0]]&%w[A E I O U a e i o u])
  if exist.length == 0
    return false
  else
    return true
  end
end

def binary_multiple_of_4? s
  if s.length == 0
    return false
  end
  if s.count("0-1") != s.length
    return false
  end
  s_decimal = s.to_i(10)
  if s_decimal % 4 ==0
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    @isbn=isbn
    @price=price
    if isbn == "" || price <=0
      raise ArgumentError
    end
  end

  attr_reader :isbn, :price
  attr_writer :isbn, :price

  def price_as_string
    "$%0.2f" % [@price]
  end

end
