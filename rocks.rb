require 'benchmark'

rocks_array = (1..2000001).to_a.shuffle
def iterative_rocks(rocks)
  max_rock = 0
  rocks.each do |rock|
    if max_rock < rock
      max_rock = rock
    end
  end
  return max_rock
end


def recursive_rocks(rocks)
  if rocks.length <= 2
  # base case, where villager can't pass down the rock anymore
    rock1 = rocks[0]
    rock2 = rocks.last
  else
  # where the rocks get divided up and passed down
    rock1 = recursive_rocks(rocks.pop(rocks.length / 2))
    rock2 = recursive_rocks(rocks)
  end

  if rock1 > rock2
    return rock1
  else
    return rock2
  end
end

puts Benchmark.measure { iterative_rocks(rocks_array) }
puts Benchmark.measure { recursive_rocks(rocks_array) }
