class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :full_name, null: false
      t.string :email, null: false, unique: true
      t.string :address, null: false
      t.string :phone_number
      t.string :credit_card_number, null: false
     
      t.timestamps
    end
  end
end
