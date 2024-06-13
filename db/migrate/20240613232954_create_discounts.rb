class CreateDiscounts < ActiveRecord::Migration[7.1]
  def change
    create_table :discounts do |t|
      t.string :name
      t.string :image
      t.decimal :current_price
      t.decimal :offer_price
      t.decimal :normal_price
      t.integer :percentage

      t.timestamps
    end
  end
end
