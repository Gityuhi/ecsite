# frozen_string_literal: true

class CartItemsController < ApplicationController
  def create
    @cart_item = current_cart.cart_items.find_by(product_id: params[:product_id])

    quantity = params[:quantity].present? ? params[:quantity].to_i : 1
    @cart_item = current_cart.cart_items.find_or_initialize_by(product_id: params[:product_id])
    @cart_item.quantity += quantity if @cart_item.persisted?
    @cart_item.quantity = quantity unless @cart_item.persisted?

    if @cart_item.save
      redirect_to request.referer, notice: '商品をカートに追加しました。'
    else
      redirect_to request.referer, alert: 'カートへの追加に失敗しました。'
    end
  end

  def destroy
    @cart_item = current_cart.cart_items.find(params[:id])
    @cart_item.destroy
    redirect_to cart_path
  end
end
