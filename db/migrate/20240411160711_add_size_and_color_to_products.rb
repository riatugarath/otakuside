class AddSizeAndColorToProducts < ActiveRecord::Migration[7.1]
  def change
  	add_column :products, :size, :string
    add_column :products, :color, :string
  end
end
