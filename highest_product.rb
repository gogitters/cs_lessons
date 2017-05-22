# Given an array of unsorted numbers, find the highest product between three numbers. You cannot used .sort on this.
require 'benchmark'
numbers = (1..200).to_a.shuffle
[10,12,11,-40,-12,1]
def nested_loop(array)
  products = []
  array.each_with_index do |num_1, index_1|
    array.each_with_index do |num_2, index_2|
      next if index_1 == index_2
      array.each_with_index do |num_3, index_3|
        next if index_2 == index_3 || index_1 == index_3
        products << num_1 * num_2 * num_3
      end
    end
  end

  highest_product = 0

  products.each do |product|
    if product > highest_product
      highest_product = product
    end
  end
  highest_product
end
# O(n^3)

# puts nested_loop(numbers)

def largest_three(array)
  highest_1 = 0
  highest_2 = 0
  highest_3 = 0

  array.each do |number|
    if number > highest_1
      highest_3 = highest_2
      highest_2 = highest_1
      highest_1 = number
    elsif number > highest_2
      highest_3 = highest_2
      highest_2 = number
    elsif number > highest_3
      highest_3 = number
    end
  end
  highest_1 * highest_2 * highest_3  
end
O(n)

# puts largest_three(numbers)

puts Benchmark.measure { nested_loop(numbers) }
puts Benchmark.measure { largest_three(numbers) }