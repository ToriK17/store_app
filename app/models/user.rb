class User < ApplicationRecord
  validates :name, :email, presence: true
  has_many :orders
  has_many :foods, through: :orders

  

end
