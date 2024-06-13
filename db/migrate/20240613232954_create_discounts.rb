class CreateDiscounts < ActiveRecord::Migration[7.1]
  def change
    create_table :discounts do |t|
      t.string :name
      t.string :image
      t.decimal :current_price, precision: 10, scale: 2
      t.decimal :offer_price, precision: 10, scale: 2
      t.decimal :normal_price, precision: 10, scale: 2
      t.integer :percentage

      t.timestamps
    end
  end
end
