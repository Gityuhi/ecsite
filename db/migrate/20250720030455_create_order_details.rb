# frozen_string_literal: true

class CreateOrderDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :order_details do |t|
      t.references :order, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity, null: false
      t.decimal :price, null: false, precision: 8, scale: 2
      t.string :name, null: false
      t.text :description

      t.timestamps
    end
  end
end
