class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.string :category
      t.decimal :price, precision: 8, scale: 2
      t.string :description

      t.timestamps
    end
  end
end
