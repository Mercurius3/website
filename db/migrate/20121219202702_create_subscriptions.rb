class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :product
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
