module ApplicationHelper

  def switch_mobile_view
    content_tag :p, link_to(other_view, switch_mobile_view_path, "data-ajax" => false)
  end

  def other_view
    is_mobile_view? ? "Toon reguliere site" : "Toon mobiele site"
  end

end
