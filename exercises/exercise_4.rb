require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "** Exercise 4 **"
puts "----------"

Store.create(name: 'Surrey', annual_revenue: 224000, mens_apparel: false, womens_apparel: true)
Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true, womens_apparel: false)
@womens_stores = Store.where(mens_apparel: false, womens_apparel: true).where('annual_revenue < ?', 1000000)

@mens_stores.each do |stores|
  puts "** Stores that only sell mens clothes: **"
  puts "Location: #{stores.name} | Revenue: #{stores.annual_revenue}"
end

@womens_stores.each do |stores|
  puts "** Stores that only sell womens clothes & revenue < 1M: **"
  puts "Location: #{stores.name} | Revenue: #{stores.annual_revenue}"
end