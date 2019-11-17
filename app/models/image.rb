class Image < ApplicationRecord
  validates :url, presence: true
  validates :url, format: URI::regexp(%w[http https])
  validates :product_id, presence: true
end
