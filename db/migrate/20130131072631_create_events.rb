class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :datetime
      t.integer :duration
      t.integer :product_id

      t.timestamps
    end
  end
end
