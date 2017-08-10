print "What is your name? "
name = gets.chomp

print "How old are you? "
age = gets.chomp.to_i

print "What year were you born? "
year_born = gets.chomp.to_i

print "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no) "

garlic_bread=gets.chomp
if (garlic_bread=="yes")
  garlic_bread=true
else
  garlic_bread=false
end

print "Would you like to enroll in the company’s health insurance? (yes/no) "

health_insurance=gets.chomp
if (health_insurance=="yes")
  health_insurance=true
else
  health_insurance=false
end

current_year = 2017
age_test = current_year-year_born

if (age_test == age) && (garlic_bread == true || health_insurance == true)
  puts "Probably not a vampire."
elsif (age_test != age) && (garlic_bread == false || health_insurance == false)
  puts "Probably a vampire."
else
  puts "Results inconclusive."
end