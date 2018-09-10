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