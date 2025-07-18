class Product < ApplicationRecord
  has_many :cart_items
  has_many :order_details
  has_many :orders, through: :order_details
end
