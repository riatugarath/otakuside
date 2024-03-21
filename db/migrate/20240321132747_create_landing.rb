class CreateLanding < ActiveRecord::Migration[7.1]
  def change
    create_table :landings do |t|
      t.string :name
      t.string :image
      t.string :category
      t.decimal :offer, precision: 8, scale: 2
      
      t.timestamps
    end
  end
end
