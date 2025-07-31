# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :carts, through: :cart_items
  has_many :order_details, dependent: :restrict_with_error
  has_many :orders, through: :order_details
  has_one_attached :image

  validates :price, numericality: { only_decimal: true, greater_than_or_equal_to: 0 }
end
