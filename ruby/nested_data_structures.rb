#================
# This is a demonstration of nested data structures in Ruby.
#================

# Main Code ===========================================

restaurant_food = {
  appetizers: {
    salads: ["cobb", "mixed_greens", "caesar"],
    soups: ["minestrone", "french_onion", "chili"],
    others: ["escargot", "olives", "cheese_plate"]
  },
  main_course: {
    beef: ["ribeye", "hambuger", "stew"],
    pork: ["pork_chops", "sweet_and_sour_pork", "pork_loin"],
    veggie: ["hummus_and_veggies", "falafel", "tofu_and veggies"]
  },
  deserts: {
    icecream: ["chocolate", "vanilla", "cookie_and_cream"],
    cake: ["chocolate_cake", "cheese_cake", "tiramisu"],
    coffee: ["drip", "espresso", "iced_coffee"]
  }
}

# Driver code =========================================
p restaurant_food[:appetizers]
p " "
p restaurant_food[:main_course][:beef]
p " "
p restaurant_food[:deserts][:cake][0]
