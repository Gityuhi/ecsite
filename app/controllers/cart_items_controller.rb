# frozen_string_literal: true

class CartItemsController < ApplicationController
  before_action :set_cart

  def create
    @cart_item = @cart.cart_items.find_by(product_id: params[:product_id])

    if @cart_item
      @cart_item.quantity += params[:quantity].present? ? params[:quantity].to_i : 1
    else
      @cart_item = @cart.cart_items.build(product_id: params[:product_id], quantity: (params[:quantity] || 1))
    end
    @cart_item.save

    if @cart_item.save
      redirect_to request.referer, notice: '商品をカートに追加しました。'
    else
      redirect_to request.referer, alert: 'カートへの追加に失敗しました。'
    end
  end

  def destroy
    @cart_item = @cart.cart_items.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path
  end

  private

  def set_cart
    @cart = current_cart
  end
end
