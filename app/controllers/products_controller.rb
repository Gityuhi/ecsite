# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.with_attached_image
  end
end
