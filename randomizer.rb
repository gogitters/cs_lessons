names = []

puts "Type 'done' when finished"
while true
  puts "Give me a name:"
  input_name = gets.chomp

  if input_name == "done"
    break
  else
    names << input_name
  end
end

names.shuffle!

while names.length > 0
  if names.length == 3
    group = names.pop(3)
  else
    group = names.pop(2)
  end

  p "Group: " + group.join(", ")
end
