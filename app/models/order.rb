class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product

  has_many :shopping_carts
end
