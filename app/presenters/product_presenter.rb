class ProductPresenter < BasePresenter
  presents :product

  def name
    product.name
  end

  def description
    content_tag(:p, markdown(product.content)) if product.content.present?
  end

  def price
    content_tag(:p, "Prijs: #{product.price}", class: "meta")
  end

  def location
    content_tag(:p, "Locatie: #{product.location}", class: "meta") if product.location.present?
  end

  def teacher
    content_tag(:p, "Docent: #{product.teacher}", class: "meta") if product.teacher.present?
  end

  def events
    content = ""
    content << div_for(product.events) do |event|
      content_tag(:h2, event.name)
      content_tag(:p, (h.l event.datetime, format: :short), class: "meta")
      content_tag(:p, event.duration, class: "meta")
    end
    raw content
  end

end