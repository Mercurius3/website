class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :sex
      t.datetime :date_of_birth
      t.string :postcode
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
