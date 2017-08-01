require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Ted", last_name: "Tederson", hourly_rate: 12)
@store1.employees.create(first_name: "Bob", last_name: "Boberson", hourly_rate: 20)

@store2.employees.create(first_name: "Jack", last_name: "Jackson", hourly_rate: 50)
@store2.employees.create(first_name: "Mick", last_name: "Mickson", hourly_rate: 14)
