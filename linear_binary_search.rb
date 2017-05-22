# Linear Search
# numbers = [3,45,232,6342,31,4,14,6,3,2,64,65,23]
# O(n)
# Binary Search
# assumes that the array is sorted
# 
require 'benchmark'
numbers = (1..4500000).to_a

def linear_search(numbers, value)
  numbers.each_with_index do |number, index|
    puts index if number == value
  end
end

def i_binary_search(array, value)
  low = 0
  high = array.length - 1
  while low <= high
    mid = low + ((high - low) / 2)
    if array[mid] == value
      return mid
    elsif array[mid] < value
      low = mid + 1
    else
      high = mid - 1
    end
  end
  return "value not found"
end

def r_binary_search(array,value,low=0,high=(array.length - 1))
  mid = (low + high) / 2
  if low >= high
    return false
  end
  if value < array[mid]
    r_binary_search(array, value, low, mid - 1)
  elsif value > array[mid]
    r_binary_search(array, value, mid + 1, high)
  elsif value == array[mid]
    mid
  end
end

puts Benchmark.measure { linear_search(numbers, 45) }
puts Benchmark.measure { i_binary_search(numbers, 45) }
puts Benchmark.measure { r_binary_search(numbers, 45) }
# puts r_binary_search(numbers, 45)
