# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array,
# printing each item in the array separated by an asterisk
# ----

zombie_apocalypse_supplies.each_index do |i|
  print zombie_apocalypse_supplies[i]
  print "*" if (i + 1) < zombie_apocalypse_supplies.length
end

#Another shorter way:
puts "\nAn alternate method:"
puts zombie_apocalypse_supplies.join("*")

# 2. In order to keep yourself organized, sort your zombie_apocalypse_supplies
# in alphabetical order. Do not use any special built-in methods.
# ----

def sorter(array)
  loop do
    switched = false
    for i in 0...array.length - 1
      if array[i].downcase > array[i + 1].downcase
        array[i], array[i + 1] = array[i + 1], array[i]
        switched = true
      end
    end
    break if !switched
  end
  array
end

puts "\nSorted zombies: #{sorter(zombie_apocalypse_supplies)}"

# 3. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies. Do not use any special built-in methods.
# For instance: are boots in your list of supplies?
# ----

def in_supplies?(string, supplies)
  supplies.each do |item|
    return true if item == string
  end
  false
end

puts "Expect false: #{in_supplies?("not in there", zombie_apocalypse_supplies)}"
puts "Expect true: #{in_supplies?("rations", zombie_apocalypse_supplies)}"


# 4. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5. Do not use any special built-in methods.
# ----
reduced_zombie_apocalypse_supplies = Array.new(zombie_apocalypse_supplies)
reduced_zombie_apocalypse_supplies.pop while reduced_zombie_apocalypse_supplies.length > 5

puts "Number of zombie_apocalypse_supplies: #{zombie_apocalypse_supplies.length}"
puts "Number of reduced_zombie_apocalypse_supplies: #{reduced_zombie_apocalypse_supplies.length}"

# 5. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.
other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]
# ----

combined_supplies = zombie_apocalypse_supplies | other_survivor_supplies
p "zombie supplies: #{zombie_apocalypse_supplies}"
p "other_survivor_supplies: #{other_survivor_supplies}"
p "combined_supplies (should have only one compass): #{combined_supplies}"

# Hash Drills

extinct_animals = {
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "Passenger Pigeon" => 1914,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.
# ----

counter = 0
extinct_animals.each do |animal, year|
  print "#{animal}-#{year}"
  print "*" if counter < extinct_animals.length
  counter += 1
end

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000. Do not use any special built-in methods.
# ----
extinct_before_2000 = {}
extinct_animals.each {|animal, year| extinct_before_2000[animal] = year if year < 2000}

puts "\n"
puts "Extinct before 2000: #{extinct_before_2000}"

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# so they accurately reflect what year the animal went extinct.
# Do not use any special built-in methods.
# ----

updated_extinction_years = {}
extinct_animals.each {|animal, year| updated_extinction_years[animal] = year - 3}
puts "Extinction three years earlier: #{updated_extinction_years}"

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Check if they're included in extinct_animals, one by one:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Do not use any special built-in methods.
# ----

def check_extinct(animal, extinct_list)
  if extinct_list[animal]
    puts "#{animal} is extinct"
  else
    puts "#{animal} is not extinct"
  end
end

check_extinct("Andean Cat", extinct_animals)
check_extinct("Dodo", extinct_animals)
check_extinct("Saiga Antelope", extinct_animals)

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find the built-in method that helps you accomplish this in the Ruby documentation
# for Hashes.
# ----

# Haven't quite figured out what method to use, so here are a couple ways. The
# shift method returns an array and gets rid of an item, but it drops items from
# the array in the order they were entered, making it difficult to use.

def delete_hash_item(hash, item)
  [item, hash.delete(item)]
end

pigeon_array = delete_hash_item(extinct_animals, "Passenger Pigeon")

p "Pigeon array: #{pigeon_array}"
p "Extinct without pigeon: #{extinct_animals}"

def assoc_delete_hash_item(hash, item)
  result = hash.assoc(item)
  hash.delete(item)
  result
end

extinct_animals["Passenger Pigeon"] = 1914
p "Extinct with pigeon: #{extinct_animals}"
pigeon_array = assoc_delete_hash_item(extinct_animals, "Passenger Pigeon")
p "Pigeon array: #{pigeon_array}"
p "Extinct without pigeon: #{extinct_animals}"
