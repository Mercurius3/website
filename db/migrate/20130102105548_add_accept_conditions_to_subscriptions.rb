class AddAcceptConditionsToSubscriptions < ActiveRecord::Migration
  def change
    add_column :subscriptions, :accept_conditions, :boolean
  end
end
