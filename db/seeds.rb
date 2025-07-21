# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product1 = Product.create!(
  name: '商品1',
  price: 1000,
  description: 'これは商品1です。'
)
product1.image.attach(
  io: File.open(Rails.root.join('app/assets/images/glasses.png')),
  filename: 'glasses.png'
)

product2 = Product.create!(
  name: '商品2',
  price: 2000,
  description: 'これは商品2です。'
)
product2.image.attach(
  io: File.open(Rails.root.join('app/assets/images/bag.png')),
  filename: 'bag.png'
)
product3 = Product.create!(
  name: '商品3',
  price: 3000,
  description: 'これは商品3です。'
)
product3.image.attach(
  io: File.open(Rails.root.join('app/assets/images/camera.png')),
  filename: 'camera.png'
)
product4 = Product.create!(
  name: '商品4',
  price: 4000,
  description: 'これは商品4です。'
)
product4.image.attach(
  io: File.open(Rails.root.join('app/assets/images/chair.png')),
  filename: 'chair.png'
)
product5 = Product.create!(
  name: '商品5',
  price: 5000,
  description: 'これは商品5です。'
)
product5.image.attach(
  io: File.open(Rails.root.join('app/assets/images/headphone.png')),
  filename: 'headphone.png'
)
product6 = Product.create!(
  name: '商品6',
  price: 6000,
  description: 'これは商品6です。'
)
product6.image.attach(
  io: File.open(Rails.root.join('app/assets/images/houseplants.png')),
  filename: 'houseplants.png'
)
product7 = Product.create!(
  name: '商品7',
  price: 7000,
  description: 'これは商品7です。'
)
product7.image.attach(
  io: File.open(Rails.root.join('app/assets/images/shoes.png')),
  filename: 'shoes.png'
)
product8 = Product.create!(
  name: '商品8',
  price: 8000,
  description: 'これは商品8です。'
)
product8.image.attach(
  io: File.open(Rails.root.join('app/assets/images/watch.png')),
  filename: 'watch.png'
)
