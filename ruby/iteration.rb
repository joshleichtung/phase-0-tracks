# Release 0
# def greeting (name)
# 	puts "Hi I am the before block!"
# 	yield(name)
# 	puts "Hi I am the after block!"
# end

# greeting("Faye") {|name| puts "Hello #{name}"}


 #Release 1
colors = ["red", "green", "blue", "pink"]

favorite_colors = {
	faye: "red",
	josh: "pink",
	alex: "blue"
}

puts "The color options are:"
colors.each do |x|
	puts x 
end

puts "Peoples favorite colors:"
favorite_colors.each do |name, color|
	puts "#{name}'s favorite color is #{color}"
end

new_color = colors.map do |color|
	color.upcase
end

print new_color

puts favorite_colors
capitalized_names = favorite_colors.map do |name,color|
	name.capitalize
end

puts capitalized_names

# Ex 1 of Release 2
new_colors = colors.delete_if {|color| color == 'red'}
print new_colors

new_favorite_colors = favorite_colors.delete_if do |name, color|
	name == :alex
end

puts new_favorite_colors

# Ex 2 of Release 2
my_numbers = [6,4,5,2,6,8,122]
my_filtered_numbers = my_numbers.select do |number|
   number.even?
end

puts my_filtered_numbers

famous_dogs = {
	snoopy: "beagle",
	scooby: "great dane",
	odie: "cartoon breed",
	pluto: "bloodhound",
	mascis: "golden doodle",
	lassie: "collie",
  scrappydoo: "great dane"
}

actually_famous_dogs = famous_dogs.select do |dog_name, breed|
	dog_name != :mascis
end

puts actually_famous_dogs

# Ex 3 of Release 2

odd_numbers = my_numbers.keep_if {|num| num.odd?}
puts odd_numbers


great_danes = famous_dogs.keep_if {|name, breed| breed == "great dane"}
puts great_danes

# Ex 4 of Release 2
my_numbers = [0, 1, 2, 4, 5, 6, 0]
new_numbers = my_numbers.drop_while do |num|
	num < 3
end


puts "dropwhile results: #{new_numbers}"

simple_hash = {
	a: 1,
	b: 2,
	c: 3,
	d: 4,
	e: 5
}
new_hash = simple_hash.reject do |letter, number|
	number < 3
end
puts "Reject hash: #{new_hash}"
