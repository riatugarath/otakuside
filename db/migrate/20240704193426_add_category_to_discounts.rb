class AddCategoryToDiscounts < ActiveRecord::Migration[7.1]
  def change
    add_column :discounts, :category, :string
  end
end
