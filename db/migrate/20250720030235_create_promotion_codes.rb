# frozen_string_literal: true

class CreatePromotionCodes < ActiveRecord::Migration[7.0]
  def change
    create_table :promotion_codes do |t|
      t.string :code, null: false, unique: true
      t.decimal :discount_amount, null: false
      t.boolean :used, null: false, default: false

      t.timestamps
    end
  end
end
