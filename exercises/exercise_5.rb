require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "** Exercise 5 **"
puts "----------"

total_revenue = Store.sum(:annual_revenue)
average_annual_revenue = Store.average(:annual_revenue)
top_earners = Store.where('annual_revenue > ?', 1000000)
number_of_top_earners = top_earners.size

puts "** Companies annual revenue: #{total_revenue} **"
puts "** Average annual revenue of all stores: #{average_annual_revenue} **"
puts "** Number of top earners: #{number_of_top_earners} **"