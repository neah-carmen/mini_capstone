class Product < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :stock, presence: true
  validates :stock, numericality: { greater_than_or_equal_to: 0 }
  validates :description, presence: true
  validates :description, length: { in: 3..500 }

  def supplier
    Supplier.find_by(id: supplier_id)
  end

  def on_sale?
    @products = []
    db_extract = Product.all
    db_extract.each do |product|
      @products << product
    end
  end

  def in_stock?
    if stock == 0
      "Not in stock."
    elsif stock >= 1
      "In stock."
    else
      "Error, please contact the webmaster."
    end
  end

  def formatted_discount
    if on_sale == true
      "#{discount}%"
    elsif on_sale == false
      "Not on sale"
    end
  end

  def tax
    chicago_tax = 10.25
    tax_rate = (chicago_tax / 100.0)
    price * tax_rate
  end

  def calcuated_discount
    price - (price * (discount / 100.00))
  end

  def formatted_price
    if on_sale == false
      "#{currency_code}#{price}"
    elsif on_sale == true
      "#{currency_code}#{calcuated_discount}"
    end
  end

  def total
    if on_sale == false
      price + tax
    elsif on_sale == true
      calcuated_discount + tax
    end
  end

  def formatted_total
    if on_sale == false
      "#{currency_code}#{total}"
    elsif on_sale == true
      "#{currency_code}#{total}"
    end
  end
end
