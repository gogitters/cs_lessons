# initialize the empty queue
# add to the end
# remove from the beginning
# peek at the first animal in the queue
# check to see if the queue is empty
class Animal
  attr_reader :order
  # attr_writer :order 
  @@order = 0

  def initialize(name, type)
    @name = name
    @type = type
    @@order += 1
    @order = @@order
  end
end

class AnimalShelter
  def initialize
    @dogs = []
    @cats = []
  end

  def add_pet(name, type)
    if type == "dog"
      @dogs.push(Animal.new(name, type))
    elsif type == "cat"
      @cats.push(Animal.new(name, type))
    end
  end

  def adopt_animal(type)
    if type == "dog"
      @dogs.shift
    elsif type == "cat"
      @cats.shift
    elsif type == "any"
      if @dogs.first.order < @cats.first.order || @cats.empty?
        @dogs.shift
      elsif @cats.first.order < @dogs.first.order || @dogs.empty?
        @cats.shift
      end
    end
  end

  def peek_at(type)
    if type == "dog"
      @dogs.first
    elsif type == "cat"
      @cats.first
    end
  end

  def is_empty?(type)
    if type == "dog"
      @dogs.empty?
    elsif type == "cat"
      @cats.empty?
    end
  end
end

shelter = AnimalShelter.new
p shelter.is_empty?("dog")
p shelter.is_empty?("cat")
dog = shelter.add_pet("Rover", "dog")
cat1 = shelter.add_pet("Fluffo", "cat")
dog1 = shelter.add_pet("Pupp", "dog")
dog1 = shelter.add_pet("Puppy", "dog")
cat1 = shelter.add_pet("Fluffy", "cat")
p shelter.is_empty?("dog")
p shelter.is_empty?("cat")
p shelter.peek_at("dog")
p shelter.peek_at("cat")
shelter.adopt_animal("dog")
p shelter.peek_at("dog")
shelter.adopt_animal("cat")
p shelter.peek_at("cat")
p shelter.adopt_animal("any")
p shelter.peek_at("dog")
p shelter.peek_at("cat")

