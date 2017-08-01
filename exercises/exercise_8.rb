require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

# Scenario: We want to be able to give employees a password (string)
# that is auto-generated when their record is created in the database.
puts "Exercise 8"
puts "----------"

@store1.employees.create(first_name: "Arnold", last_name: "Chan", hourly_rate: 40)

# t.references :customer, index: true, foreign: true
# t.integer :price, default: 0
# order.order.date = date.today()
# order.attributes = {date: date.today()}