ActiveAdmin.register Page do
  
  action_item :only => [:show] do
    link_to('Preview', page_path(page))
  end
  
  controller do
    defaults finder: :find_by_permalink
  end
  
  index do
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
end