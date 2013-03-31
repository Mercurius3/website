ActiveAdmin.register Message do
  index do
    selectable_column
    column :user
    column :content
    column :created_at
    default_actions
  end
end
