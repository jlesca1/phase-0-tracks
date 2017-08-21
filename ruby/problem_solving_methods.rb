# Release 0: Implement a Simple Search

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

search_array(array, 54)


# Release 1: Calculate Fibonacci Numbers

def fib(num)
  array=[0,1]
  count=2
  fib=0
  index=2

  if num==1
      array.pop
  end

  while count < num
    if num > 2
      fib = array[index-2]+array[index-1]
      array.push(fib)
      index=index+1
    end
    count+=1
  end
  p array
end
fib(1)
fib(2)
fib(3)
fib(10)
fib(100)


# Release 2: Sort an Array

#1: Insertion sort, I CHOOSE YOU!!!
#2: I am a visual person and there is a great simple animation in wikipedia.
#3: I feel a combo of excitement and being overwhelmed.  I just need to remember to breath and take things one step at a time.  "What is the best way to eat an elephant?  One bite at a time."

#4: Pseudocode for the insertion sort # - Compare the second item in the list to the first.
# - If the second is larger keep it where it is else swap the two.
# - Look and the 3rd item and compare to each number to its left until a smaller number is found or you are at index zero.
# - Repeat until all items are sorted.

#5: Implement Insertion Sort

def insertion_sort (array)
  count = 1
  temp = 0
  while count < array.length

    current = array[count]
    temp = count
    while temp > 0 && array[temp-1] > current
      array[temp] = array[temp - 1]
      temp-=1
    end
    array[temp]=current
    count+=1
  end
  print "Here is the sorted array #{array}!"
end

example_1 = [4,7,1,15,3,2]

insertion_sort(example_1)