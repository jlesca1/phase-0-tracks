# Pseaudocode ###########################################
#
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Take a string of items and separate them into distinct keys based on the white space
  # set default quantity to 1
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
  grocery_list = Hash.new(0) #other method is only local in grocery_list
  food_array = items.split(" ")
  food_array.each{|food| grocery_list[food] = 1}
  grocery_list
end
def add_item(list_hash, item_name, quantity)
    list_hash[item_name] = quantity
    list_hash
end
def remove_item(list_hash, item_name)
    list_hash.delete_if{|fruit, value| fruit == item_name}
    list_hash
end
def update_quantity(list_hash, item_name, new_quantity)
    list_hash[item_name] = new_quantity
    list_hash
end
def look_pretty(list_hash)
  list_hash.each {|food, quantity| puts "#{food}: #{quantity}"}
end
# # Driver Code ##########################################
# # Doin` the stuff
p test_grocery_list = create_list("orange apple plum")
p add_item(test_grocery_list, "peach", 2)
p remove_item(test_grocery_list, "orange")
p update_quantity(test_grocery_list, "peach", 3)
look_pretty(test_grocery_list)