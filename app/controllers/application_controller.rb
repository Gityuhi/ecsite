# frozen_string_literal: true

class ApplicationController < ActionController::Base
  helper_method :current_cart

  private

  def basic_auth
    return unless Rails.env.production?

    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end

  def current_cart
    @current_cart ||= begin
      cart = Cart.find_by(id: session[:cart_id])
      unless cart
        cart = Cart.create
        session[:cart_id] = cart.id
      end
      cart
    end
  end
end
