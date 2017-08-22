# Pseaudocode ###########################################
#
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create hash splits strig of item into key and items
  # set default quantity
  # print the list to the console refer to line 26 (refer to print method)
# output: Hash

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: reference created list, splits string of item into key and items (quantity) and push into the hash
# output: Hash

# Method to remove an item from the list
# input: Existing hash table
# steps: Using a specific key, remove selected item from the hash table
# output: Hash (minus removed item)

# Method to update the quantity of an item
# input: Existing hash table
# steps: Locate the key of the item whoes quantity to change, pass in new value for the new quantity
# output: Hash

# Method to print a list and make it look pretty
# input: Existing hash table
# steps: Print each item and quantity per line with a colon between the two
# output: Hash

# Main ##################################################

def create_list(items)
  grocery_list = {} #other method is only local in grocery_list
  food_array = items.split(" ")
  i = 0
  while i < food_array.length
    grocery_hash[food_array[i]] = 1
    i+=1
  end
  print_list(grocery_hash)
  return grocery_hash
end

grocery_list = create_list # equvalat to the return value from create_list return; to make create_list not local

def add_item(grocery_list, key, item) #same as 52-55?
  grocery_list[key] = item
  return grocery_list
end

def add_item(array, key, item) #same as 47-50?
  array[key] = item
  return array
end



grocery_list = add_item # Does this make sence and is the logic linear like that? Willthis update the global variable? (grocery_list)

# Driver Code ##########################################

# Doin` the stuff

add_item(grocery_list, cantalope, 2) #line 47-50 or 52-55