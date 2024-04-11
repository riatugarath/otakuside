class AddSizeToCarts < ActiveRecord::Migration[7.1]
  def change
  	add_column :carts, :size, :string
  end
end
