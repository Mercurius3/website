ActiveAdmin.register Page do
  config.sort_order = 'position_asc' # assumes you are using 'position' for your acts_as_list column
  # config.paginate   = false # optional; drag-and-drop across pages is not supported

  sortable # creates the controller action which handles the sorting

  action_item :only => [:show] do
    link_to('Preview', page_path(page))
  end

  controller do
    defaults finder: :find_by_permalink
  end

  index do
    sortable_handle_column # inserts a drag handle
    column :name
    column :permalink
    column :id
    default_actions
  end

  show do
    div do
      raw Kramdown::Document.new(page.content, auto_ids: :false, parse_block_html: :true).to_html
    end
  end

  # controller do
  #   cache_sweeper :page_sweeper
  # end

end