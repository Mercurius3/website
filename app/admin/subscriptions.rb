ActiveAdmin.register Subscription do
  index do
    selectable_column
    column :accept_conditions
    column :user
    column :product
    default_actions
  end
end
