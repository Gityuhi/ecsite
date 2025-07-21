# frozen_string_literal: true

class PromotionCode < ApplicationRecord
  has_one :order, dependent: :restrict_with_error
end
