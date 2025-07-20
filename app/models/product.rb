# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :order_details, dependent: :restrict_with_error
  has_many :orders, through: :order_details
end
