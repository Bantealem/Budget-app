class BeTransaction < ApplicationRecord
    belongs_to :user
    has_many :category_transactions
    has_many :categories, through: :category_transactions
    validates :name, presence: true
    validates :amount, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
