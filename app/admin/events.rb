ActiveAdmin.register Event do
  index do
    column :product
    column :name
    column :datetime
    default_actions
  end
end