class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :trackable
  has_many :expenses, dependent: :destroy, foreign_key: :user_id
  has_many :categories, dependent: :destroy, foreign_key: :user_id
  validates :name, presence: true
end
