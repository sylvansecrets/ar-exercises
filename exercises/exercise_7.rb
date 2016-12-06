require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  validates :name, length: {minimum: 3}
  has_many :employees, inverse_of: :store
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :must_carry_some_clothes

  def must_carry_some_clothes
    unless mens_apparel || womens_apparel
      errors.add(:mens_apparel, 'must carry some clothing')
      puts ("Must specify what kind of clothing is carried")
    end
  end

end

class Employee < ActiveRecord::Base
  validates :first_name , :last_name, :store, presence: true
end

puts "Try entering a store name"
tentative_store = STDIN.gets.strip
Store.create(name: tentative_store)

