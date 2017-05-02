# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # Split the string by spaces to turn it into an array
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [hashes where the hash has a key for the item name and for
# the quantity]

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: push a hash of the item and the qantity onto the original list
# output: modified hash

# Method to remove an item from the list
# input: list and string of the item name
# steps: Look up item in the list, and delete
# output: new list/hash with the item deleted

# Method to update the quantity of an item
# input: list, string of the item, and quantity with default value 1
# steps: push hash of string and quanatity
# output: new hash/list

# Method to print a list and make it look pretty
# input: hash/list
# steps: Iterate through list and print Item name and Quantity for each item on
# a a line. Print with string interpolation
# output: list/hash

def create_list(list)
  list = list.split(' ')
  result = {}
  list.each do |item|
    result[item.to_sym] = 1
  end
  result
end

def add_item_to_list(list, item_name, quantity = 1)
  item_name = item_name.to_sym
  if list.key?(item_name)
    list[item_name] += quantity
  else
    list[item_name] = quantity
  end
  {item_name => quantity}
end

def remove_list_item(list, item_name)
  {item_name.to_sym => list.delete(item_name.to_sym)}
end

def update_list(list, item_name, quantity = 1)
  list[item_name.to_sym] = quantity
  {item_name.to_sym => quantity}
end

def print_list(list)
  list.each do |key, value|
    puts "#{key}: #{value}"
  end

end


# Driver Code
list = create_list("apples oranges bananas")
puts "Expect apples: 1, oranges: 1, bananas: 1"
print_list(list)
add_item_to_list(list, "apples", 3)
add_item_to_list(list, "celery")
puts "\n\nshould have 4 apples and 1 celery"
print_list(list)
remove_list_item(list, "oranges")
update_list(list, "celery", 2)
puts "\n\nshoud have no oranges, and celery: 2"
print_list(list)
