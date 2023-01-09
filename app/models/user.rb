class User < ApplicationRecord
    has_many :be_transactions
    has_many :Category
    validates :name, presence: true
end
