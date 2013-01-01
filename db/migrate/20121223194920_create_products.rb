class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :content
      t.string :location
      t.string :teacher
      t.boolean :active
      t.float :price
      t.integer :position

      t.timestamps
    end
  end
end
