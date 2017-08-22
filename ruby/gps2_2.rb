# Pseaudocode###########################################
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

#Main###################################################

def create_list(items)
  grocery_list = {} #other method is only local in grocery_list
  food_array = items.split(" ")
  i = 0
  while i < food_array.length
    grocery_hash[food_array[i]] = 1
    i+=1
  end
  return grocery_hash
end

touch part 2nd method add items
add_item #pass in grocery_list

grocery_list = create_list # equlalat to the return value from line41; to make creae_list less local
add_item(grocery_list, bananas, 1)