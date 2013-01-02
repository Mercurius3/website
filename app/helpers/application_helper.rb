module ApplicationHelper

  def markdown(content)
    raw Kramdown::Document.new(content, auto_ids: :false, parse_block_html: :true).to_html
  end

  def switch_mobile_view
    content_tag :p, link_to(other_view, switch_mobile_view_path, "data-ajax" => false)
  end

  def other_view
    is_mobile_view? ? "Toon reguliere site" : "Toon mobiele site"
  end

end
