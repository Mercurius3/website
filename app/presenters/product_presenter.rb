class ProductPresenter < BasePresenter
  presents :product
  include Icalendar

  def product_link
    link_to(product.name, product)
  end

  def product_h1
    content_tag(:h1, product.name)
  end

  def description
    content_tag(:p, markdown(product.content))
  end

  def price
    content_tag(:p, "Prijs: #{number_to_currency(product.price)}", class: "meta")
  end

  def location
    content_tag(:p, "Locatie: #{product.location}", class: "meta")
  end

  def teacher
    content_tag(:p, "Docent: #{product.teacher}", class: "meta")
  end

  def date
    l(product.events.first.datetime, format: :short)
  end

  def events
    content = ""
    content_tag_for(:ul, product.events) do |event|
      content << content_tag(:li, link_to("#{event.name} : #{l event.datetime, format: :short} - #{l (event.datetime + event.duration), format: :time}", event), class: "meta")
    end
    raw content
  end
end