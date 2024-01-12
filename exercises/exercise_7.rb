require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "** Exercise 7 **"
puts "----------"

class Store < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :annual_revenue, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end

class Employee < ActiveRecord::Base
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store, presence: true
end

puts "Enter a store name:"
@user_store_name = gets.chomp

new_store = Store.create(name: @user_store_name)

if new_store.save
  puts "Store created successfully!"
else
  puts "Failed to create the store. Errors:"
  new_store.errors.full_messages.each do |error|
    puts error
  end
end