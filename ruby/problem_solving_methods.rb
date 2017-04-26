#DBC Challenge 5.6
#Josh and Wan
#@joshleichtung  and #wantsui
#Release 0
#Create a method that accepts array and an index to look for
	#Go through each item in the array that the use passes in: array[]
		#Check to see if the value of array[position] is equal to the number that is passed in
			#If it is the number that the user is looking for, return the number of the index
	#Outside of the loop, return "nil"

def integer_search(list, number)
	index = 0
	while index < list.length
		if list[index] == number
			return index
		end
		index += 1
	end
	nil
end

list = [42, 89, 23, 1]
p "Test 1: Expected 3 "
p  integer_search(list, 1)
p "Test 2: Expected nil"
p integer_search(list, 24)

#Release 1
#Create a method that accepts a number and generates a fibonacci sequence of that length
#Create a blank array and set to 0 and 1
#If the item_number is negative, return nil
#Else if the item_number is equal to 1, set the first item to 0
#Else if the item_number is greater than 2:
	#loop through the number of times the user typed in. Each time:
			#Inserting a number into the array that adds the previous two together

def fib(item_number)
	result = [0 , 1]
	loop_counter = 2
	if item_number < 1
		result = nil
	elsif item_number == 1
		result = [0]
	elsif item_number > 2
		while loop_counter < item_number
			result << result[loop_counter-1] + result[loop_counter-2]
			loop_counter += 1 		
		end
	end
	result
end

puts "Release 1: First 6 numbers in fibonacci"
p fib(6)

puts "Release 1: 0 numbers in fibonacci"
p fib(0)

puts "Release 1: 1 number in fibonacci"
p fib(1)

puts "Release 1: 2 numbers in fibonacci"
p fib(2)

puts "Release 1: 100 numbers in fibonacci - Last number should be 218922995834555169026"
p fib(100)
#To verify last number of fibonacci where the length is 100 using the following:
p fib(100).last == 218922995834555169026

#Release 2
#Selection Sort

#Create a method that can take an unsorted array and sort it
#Set index boundary to 0
#Loop while index boundary is less than the array length
	#Call on the method that returns the smallest number's index
	#Swap the smallest number with the number at the index boundary
#Return the result of the array

#Create a method that takes an array and a starting index so that it can return the smallest number's index
	#Set the index of the smallest number to the starting index
	#Loop through all the items of the array and looks for the index of the smallest number
		#If the current item in the array is less than the smallest number, then this becomes the smallest number.
	#Return the index of the smallest number

	#https://en.wikipedia.org/wiki/Selection_sort

def index_of_smallest_number(array, starting_index)
	smallest_index = starting_index

	while starting_index < array.length
		smallest_index = starting_index if array[starting_index] < array[smallest_index]
		starting_index += 1
	end
	smallest_index
end

def selection_sort(array)
	index_boundary = 0
	while index_boundary < array.length
		smallest_index = index_of_smallest_number(array, index_boundary)
		temp = array[index_boundary]
		array[index_boundary] = array[smallest_index]
		array[smallest_index] = temp
		index_boundary += 1
	end
	array
end

puts "Release 2: Smallest number test"
p "Expected result is 3: #{index_of_smallest_number([6,2,8,2,11,5,8],2)}"
p "Expected result is 2: #{index_of_smallest_number([1,2,3,4,5,6,7,8],2)}"
p "Expected result is 4: #{index_of_smallest_number([10,10,10,10,2,5, 5], 3)}"

puts "Release 2: Selection Sort test 1"
p selection_sort([6,2,8,2,11,5,8])
