require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

surrey = Store.create(name: "Surrey", annual_revenue: "224000", womens_apparel: true)
whistler = Store.create(name: "Whistler", annual_revenue: "1900000", mens_apparel: true)
yaletown = Store.create(name: "Yaletown", annual_revenue: "430000", womens_apparel: true, mens_apparel: true)

puts Store.count

