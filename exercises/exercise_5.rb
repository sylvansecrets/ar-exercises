require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...
total_revenue = Store.sum(:annual_revenue)
store_count = Store.count
high_count = Store.where('annual_revenue > ?', 1000000).count
puts "The total revenue for the company in the lower Mainland is #{total_revenue}"
puts "With the stores averaging a revenue of #{total_revenue/store_count}"
puts "#{high_count} stores had revenues greater than 1M"