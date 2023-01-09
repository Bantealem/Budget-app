class CategoryTransaction < ApplicationRecord
  belongs_to :category
  belongs_to :be_transaction
end
