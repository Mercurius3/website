ActiveAdmin.register Product do
  config.sort_order = 'position_asc' # assumes you are using 'position' for your acts_as_list column
  # config.paginate   = false # optional; drag-and-drop across pages is not supported

  sortable # creates the controller action which handles the sorting

  index do
    sortable_handle_column # inserts a drag handle
    column :category
    column :name
    column :location
    column :teacher
    default_actions
  end

  show do
    h3 product.name
    #TODO show content & picture
    div product.content
    div image_tag product.picture_url.to_s
    product.events.each do |event|
      div do
        "#{event.name}, #{event.datetime}"
      end
    end
    product.users.each do |user|
      div do
        user.email
      end
    end
  end

  form :partial => "form"
end
