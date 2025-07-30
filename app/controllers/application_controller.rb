# frozen_string_literal: true

class ApplicationController < ActionController::Base
  private

  def basic_auth
    return unless Rails.env.production?

    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['BASIC_AUTH_USER'] && password == ENV['BASIC_AUTH_PASSWORD']
    end
  end
end
