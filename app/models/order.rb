class Order < ApplicationRecord
  belongs_to :user

  has_many :shopping_carts
end
