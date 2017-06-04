# Stacks and Queues

# Stack is a restricted array
# Last in, first out
# x = [1,2,3,4]
# x << 5
# x = [1,2,3,4,5]
# x.pop
# x = [1,2,3,4]

class Stack
  def initialize
    @stack = []
  end

  def add_to_stack(element)
    @stack << element
  end

  def remove_from_stack
    @stack.pop
  end

  def is_empty?
    @stack.empty?
  end

  def peek
    @stack.last
  end
end

dishes = Stack.new
p dishes.is_empty?
dishes.add_to_stack("plate1")
dishes.add_to_stack("plate2")
dishes.add_to_stack("plate3")
p dishes
p dishes.is_empty?
p dishes.peek
dishes.remove_from_stack
p dishes.peek
dishes.add_to_stack("plate4")
p dishes
p dishes.peek

# Queues

# Queues is a restricted array
# First in, first out
# x = [1,2,3,4]
# x << 5
# x.shift
# x = [2,3,4,5]

class Queue

  def initialize
    @queue = []
  end

  def add_to_queue(element)
    @queue << element
  end

  def leave_queue
    @queue.shift
  end

  def is_empty?
    @queue.empty?
  end

  def peek
    @queue.first
  end
end


# line = Queue.new
# p line.is_empty?
# line.add_to_queue("David")
# line.add_to_queue("Reilly")
# line.add_to_queue("Kenny")
# p line
# p line.is_empty?
# p line.peek
# line.leave_queue
# p line.peek
# line.add_to_queue("Elvin")
# p line.peek
# p line
