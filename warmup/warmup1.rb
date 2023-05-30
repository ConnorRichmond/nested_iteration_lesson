# Part One
# Given the follow array:
animals = [:dog, :cat, :zebra, :quokka, :unicorn, :bear]

# Use an enumerable to
# 1. Return an array of animals as strings.

animal_list = animals.map do |animal|
  animal.to_s
end

p animal_list




# 2. Return an array of animals with a length >= 4.
animal_list2 = []
animals.select do |animal|
  if animal.length >= 4
    animal_list2 << animal
  end
end

p animal_list2
