# frozen_string_literal: true

class Cart < ApplicationRecord
  has_many :cart_items, dependent: :delete_all
  has_many :products, through: :cart_items

  def total_price
    cart_items.joins(:product).sum('products.price * cart_items.quantity')
  end
end
