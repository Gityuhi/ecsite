# frozen_string_literal: true

class ProductsController < ApplicationController
  def index
    @products = Product.with_attached_image
  end

  def show
    @product = Product.find(params[:id])
    @products = Product.with_attached_image.order(id: :desc).where.not(id: @product)
  end
end
