ActiveAdmin.register Category do
  config.sort_order = 'position_asc' # assumes you are using 'position' for your acts_as_list column
  # config.paginate   = false # optional; drag-and-drop across pages is not supported

  sortable # creates the controller action which handles the sorting

  index do
    sortable_handle_column # inserts a drag handle
    column :name
    column :position
    default_actions
  end

  controller do
    cache_sweeper :category_sweeper
  end
end