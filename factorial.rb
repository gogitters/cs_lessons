# 5! => 5 * 4 * 3 * 2 * 1
# 4! => 4 * 3 * 2 * 1
# 3! => 3 * 2 * 1

require 'benchmark'
def iterative_factorial(number)
  product = 1
  until number == 0
    product *= number
    number -=1
  end
  product
end


# 5! => 5 * 4!
def recursive_factorial(number)
  if number <= 1
    number
  else
    number * recursive_factorial(number - 1)
  end
end

puts Benchmark.measure { iterative_factorial(80000) }
puts Benchmark.measure { recursive_factorial(80000) }