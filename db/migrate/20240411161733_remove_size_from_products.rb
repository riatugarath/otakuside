class RemoveSizeFromProducts < ActiveRecord::Migration[7.1]
  def change
  	remove_column :products, :size
  end
end
