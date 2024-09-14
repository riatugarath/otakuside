class AddSubToLandings < ActiveRecord::Migration[7.1]
  def change
  	add_column :landings, :sub, :string, default: 'all'
  end
end
