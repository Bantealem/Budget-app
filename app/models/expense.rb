class Expense < ApplicationRecord
  belongs_to :user
  has_many :category_expenses
  has_many :categories, through: :category_expenses
  validates :name, presence: true
  validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
