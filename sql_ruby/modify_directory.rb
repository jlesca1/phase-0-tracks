# This ruby file will set up a phone directory that will be able to be modified by the end user

# Main code ==========================================================

# require gems
require 'sqlite3'
require 'faker'

# create SQLite3 database
phone_db = SQLite3::Database.new("directory.db")
phone_db.results_as_hash = true

# string delimiters
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS directory(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    phone_number VARCHAR(50),
    email_address VARCHAR(255)
  )
SQL

# create the directory table the first time file is run.
phone_db.execute(create_table_cmd)

# Adds new entry into the directory
def create_entry(phone_db, first_name, last_name, phone_number, email_address)
  phone_db.execute("INSERT INTO directory (first_name, last_name, phone_number, email_address) VALUES (?, ?, ?, ?)", [first_name, last_name, phone_number, email_address])
end

# Deletes an entry by first and last name
def delete_entry(phone_db, first_name, last_name)
  phone_db.execute("DELETE FROM directory where (first_name = ? and last_name = ?)", [first_name, last_name])
end

def look_up_last_name(phone_db, last_name)
  directory = phone_db.execute("SELECT * FROM directory where (last_name = ?)", [last_name])
  directory.each do |entry|
    puts "#{entry['first_name']}, #{entry['last_name']}, #{entry['phone_number']}, #{entry['email_address']}"
  end
end

def look_up_first_name(phone_db, first_name)
  directory = phone_db.execute("SELECT * FROM directory where (first_name = ?)", [first_name])
  directory.each do |entry|
    puts "#{entry['first_name']}, #{entry['last_name']}, #{entry['phone_number']}, #{entry['email_address']}"
  end
end

# 10.times do
#   create_entry(phone_db, Faker::Name.first_name, Faker::Name.last_name, Faker::PhoneNumber.phone_number, Faker::Internet.email)
# end


# Driver code ========================================================

puts "Hello! Please select one of the following:"
puts "1 - Insert an entry,"
puts "2 - Delete an entry by first and last name."
puts "3 - Lookup an entry."
puts "4 - Print the directory"
selection = gets.chomp.to_i
if selection == 1
  print "Please input first name: "
  first_name = gets.chomp
  puts " "
  print "Please input Last name: "
  last_name = gets.chomp
  puts " "
  print "Please input phone number: "
  phone_number = gets.chomp
  puts " "
  print "Please input email address: "
  email_address = gets.chomp
  create_entry(phone_db, first_name, last_name, phone_number, email_address)
elsif selection == 2
  print "Please input first name: "
  first_name = gets.chomp
  print "Please input Last name: "
  last_name = gets.chomp
  delete_entry(phone_db, first_name, last_name)
elsif selection == 3
  puts "Please select one of the following: "
  puts "1 - Search by first name."
  puts "2 - Search by last name."
  search = gets.chomp.to_i
  if search == 1
    print "Look up by first name: "
    first_name = gets.chomp
    look_up_first_name(phone_db, first_name)
  elsif search == 2
    print "Look up by Last name: "
    last_name = gets.chomp
    look_up_last_name(phone_db, last_name)
  end
elsif selection == 4
  directory = phone_db.execute("SELECT * FROM directory")
  directory.each do |entry|
    puts "#{entry['first_name']}, #{entry['last_name']}, #{entry['phone_number']}, #{entry['email_address']} "
  end
end