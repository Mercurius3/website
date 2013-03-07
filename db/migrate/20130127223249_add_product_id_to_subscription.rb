class AddProductIdToSubscription < ActiveRecord::Migration
  def change
    add_column :subscriptions, :product_id, :integer
  end
end
