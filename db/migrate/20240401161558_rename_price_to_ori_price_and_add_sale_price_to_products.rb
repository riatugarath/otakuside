class RenamePriceToOriPriceAndAddSalePriceToProducts < ActiveRecord::Migration[7.1]
  def change
  	rename_column :products, :price, :ori_price
    add_column :products, :sale_price, :decimal, precision: 8, scale: 2
  end
end
