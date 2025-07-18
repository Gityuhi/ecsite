class AddPromotionCodeToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :promotion_code, null: false, foreign_key: true
  end
end
