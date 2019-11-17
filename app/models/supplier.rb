class Supplier < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :phone_number, presence: true

  def products
    Product.where(supplier_id: id)
  end
end
