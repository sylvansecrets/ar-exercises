require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'

puts "Exercise 8"
puts "----------"

class Employee < ActiveRecord::Base
  belongs_to :store
  before_create do
    self.password = rand(36**8).to_s(36) if password.blank?
    puts self.password
  end
end

@store1.employees.create(first_name: "dd", last_name: "ff", hourly_rate: 60)