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