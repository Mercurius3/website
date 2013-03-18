module ApplicationHelper
  def present(object, klass = nil)
    klass ||= "#{object.class}Presenter".constantize
    presenter = klass.new(object, self)
    yield presenter if block_given?
    presenter
  end

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
