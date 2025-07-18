class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :user, null: false, foreign_key: true
      # t.references :promotion_code, foreign_key: true
      t.decimal :total_price, null: false, precision: 8, scale: 2
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :address, null: false
      t.string :phone_number
      t.string :credit_card_number, null: false

      t.timestamps
    end
  end
end
