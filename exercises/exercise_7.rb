require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

puts "Enter new store name"
@new_store_name = gets.chomp

@new_store = Store.create(name: @new_store_name)

# new_store = Store.new(name: @new_store_name, annual_revenue: 224000, mens_apparel: false, womens_apparel: false)
puts @new_store.errors.messages
# new_store.save