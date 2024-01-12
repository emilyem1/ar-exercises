require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "** Exercise 6 **"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Emily", last_name: "Rose", hourly_rate: 50)
@store1.employees.create(first_name: "Elisha", last_name: "Campbell", hourly_rate: 60)
@store2.employees.create(first_name: "Karen", last_name: "Lynn", hourly_rate: 50)
@store2.employees.create(first_name: "Ian", last_name: "Smith", hourly_rate: 60)
@store2.employees.create(first_name: "Ken", last_name: "Sho", hourly_rate: 50)

Employee.all.each do |employee|
  puts "My name is #{employee.first_name}, I make $#{employee.hourly_rate} an hour!"
end