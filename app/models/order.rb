# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :promotion_code, optional: true
  has_many :order_details, dependent: :destroy
  has_many :products, through: :order_details
end
