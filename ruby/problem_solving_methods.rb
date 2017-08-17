array = [32,54,765,4348]

def search_array(array, num)
  index = 0
  check = 0
  while index < array.length
    if array[index] == num
      check = 1
      p "The index of #{num} is #{index}"
    end
    index+=1
  end
  if check == 0
    p nil
    p "That number is not in the array"
  end
end

search_array(array, 111111)

def fib(num)
  array=[0,1]
  count=0
  fib=0
  index=2

  while count <= num
    if num==0
      array.pop
    elsif num==1
    else
      p "pre-index = #{index}"
      #p "array-2 #{array[index-2]}"
      #p "array-1 #{array[index-1]}"
      fib = array[index-2]+array[index-1]
      #p "fib = #{fib}"
      array.push(fib)
      index=index+1
      p "post-index = #{index}"
    end
    count+=1
  end
  p array
end

fib(2)
fib(3)
fib(10)