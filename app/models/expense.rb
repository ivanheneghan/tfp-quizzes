class Expense < ActiveRecord::Base
  validates :expenses, presence: true, length: {maximum: 100, minimum: 3}
  validates :amount, presence: true, numericality: {greater_than_or_equal_to: 0}
end
