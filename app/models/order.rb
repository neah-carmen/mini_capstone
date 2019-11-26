class Order < ApplicationRecord
  belongs_to :user

  has_many :products, through: :shopping_carts
  has_many :shopping_carts
end
