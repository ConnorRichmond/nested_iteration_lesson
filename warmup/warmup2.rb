# Part Two
# Given the following array:
nested_animals = [[:dog, :cat, :zebra], [:quokka, :unicorn, :bear]]

# Use an enumerable to:
# 1. Return an unnested (single layer) array of animals as strings

unnested_animals = nested_animals.flatten.map do |animal|
  animal.to_s
end

p unnested_animals


# 2. Return an unnested array of animals with length >= 4

unnested_animals = nested_animals.map do |animals|
  animals.select do |animal|
    animal.length >= 4
  end
end

p unnested_animals.flatten


# 3. Return a hash where the keys are the animal, and the values are the length. ex: {dog: 3, cat: 3, zebra: 5 ... }

animal_hash =  {}

nested_animals.flat_map do |animals|
  animals.map do |animal|
    animal_hash[animal] = animal.length
  end
end

p animal_hash