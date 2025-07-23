# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Product.find_or_create_by!(name: '商品1') do |product|
  product.price = 1000
  product.description = 'これは商品1です。'
  product.image.attach(
    io: File.open(Rails.root.join('app/assets/images/glasses.png')),
    filename: 'glasses.png'
  )
end

Product.find_or_create_by!(name: '商品2') do |product|
  product.price = 2000
  product.description = 'これは商品2です。'
  product.image.attach(
    io: File.open(Rails.root.join('app/assets/images/bag.png')),
    filename: 'bag.png'
  )
end

Product.find_or_create_by!(name: '商品3') do |product|
  product.price = 3000
  product.description = 'これは商品3です。'
  product.image.attach(
    io: File.open(Rails.root.join('app/assets/images/camera.png')),
    filename: 'camera.png'
  )
end

Product.find_or_create_by!(name: '商品4') do |product|
  product.price = 4000
  product.description = 'これは商品4です。'
  product.image.attach(
    io: File.open(Rails.root.join('app/assets/images/chair.png')),
    filename: 'chair.png'
  )
end

Product.find_or_create_by!(name: '商品5') do |product|
  product.price = 5000
  product.description = 'これは商品5です。'
  product.image.attach(
    io: File.open(Rails.root.join('app/assets/images/headphone.png')),
    filename: 'headphone.png'
  )
end

Product.find_or_create_by!(name: '商品6') do |product|
  product.price = 6000
  product.description = 'これは商品6です。'
  product.image.attach(
    io: File.open(Rails.root.join('app/assets/images/houseplants.png')),
    filename: 'houseplants.png'
  )
end

Product.find_or_create_by!(name: '商品7') do |product|
  product.price = 7000
  product.description = 'これは商品7です。'
  product.image.attach(
    io: File.open(Rails.root.join('app/assets/images/shoes.png')),
    filename: 'shoes.png'
  )
end

Product.find_or_create_by!(name: '商品8') do |product|
  product.price = 8000
  product.description = 'これは商品8です。'
  product.image.attach(
    io: File.open(Rails.root.join('app/assets/images/watch.png')),
    filename: 'watch.png'
  )
end

