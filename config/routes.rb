# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :admin do
    resources :products
  end
  resources :products

  # get 'admin/products', to: 'admin#index'
  # get 'admin/products/new', to: 'admin#new'
  # post 'admin/products', to: 'admin#create'
  # get 'admin/products/:id/edit', to: 'admin#edit'
  # patch 'admin/products/:id', to: 'admin#update'
  # delete 'admin/products/:id', to: 'admin#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'products#index'
end
