class AddIsRemovedToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :is_removed, :boolean, default: false
  end
end
