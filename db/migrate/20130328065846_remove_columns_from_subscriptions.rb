class RemoveColumnsFromSubscriptions < ActiveRecord::Migration
  def up
    remove_column :subscriptions, :product
    remove_column :subscriptions, :email
    remove_column :subscriptions, :first_name
    remove_column :subscriptions, :last_name
  end

  def down
    add_column :subscriptions, :product, :string
    add_column :subscriptions, :email, :string
    add_column :subscriptions, :first_name, :string
    add_column :subscriptions, :last_name, :string
  end
end
