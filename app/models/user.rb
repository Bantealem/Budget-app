class User < ApplicationRecord
    has_many :be_transactions
    has_many :Category
end
