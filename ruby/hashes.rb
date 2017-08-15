# Pseudocode
#
# Prompt disigner/user for the following:
# The client's name, age, number of children, decor theme, do they want sustainable materials only, favorite colors.
#
# Put the giving info into a hash table.
#
# Print out table for review when complete and give opportunity to re-input any mistakes.
#
# Print final version and exit program.


# Working Code

print "Please enter your name: "
name = gets.chomp

print "Please enter your age: "
age = gets.chomp

print "Please enter your numer of children: "
num_children = gets.chomp

print "Please enter your decor theme: "
decor_theme = gets.chomp

print "Do you only want sustainable materals to be used (yes/no): "
sustainable_materals = gets.chomp

print "Please enter your favorite color: "
fav_color = gets.chomp

client_info = {
  name: name,
  age: age,
  num_children: num_children,
  decor_theme: decor_theme,
  sustainable_materals: sustainable_materals,
  fav_color: fav_color
}

p client_info

print "Are there any change you would like to make to the above list? (type catigory name to change or none to keep current list): "
update=gets.chomp

if udate != "none"{

}

p client_info