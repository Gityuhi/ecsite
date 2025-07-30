# frozen_string_literal: true

module Admin
  class ProductsController < ApplicationController
    before_action :basic_auth, only: [:index]

    def index
      @products = Product.with_attached_image
    end

    def new
      @product = Product.new
    end

    def create
      @product = Product.new(product_create_params)
      if Product.exists?(name: @product.name)
        redirect_to new_admin_product_path
      else
        @product.save
        redirect_to admin_products_path
      end
    end

    def edit
      @product = Product.find(params[:id])
    end

    def update
      @product = Product.find(params[:id])
      if @product.update(product_update_params)
        @product.image.attach(params[:product][:image]) if params[:product][:image].present?
        redirect_to admin_products_path
      else
        render 'edit', status: :unprocessable_entity
      end
    end

    def destroy
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to admin_products_path
    end

    private

    def product_create_params
      params.require(:product).permit(:name, :price, :description, :image)
    end

    def product_update_params
      params.require(:product).permit(:name, :price, :description)
    end
  end
end
