module ProductsHelper
  # def show_product(product = @product)
  #   content = ""
  #   content << content_tag(:h1, product.name) if product.name
  #   content << content_tag(:p, (raw Kramdown::Document.new(product.content).to_html)) unless product.content.empty?
  #   content << content_tag(:p, "Prijs: #{product.price}", class: "meta") if product.price
  #   content << content_tag(:p, "Locatie: #{product.location}", class: "meta") unless product.location.empty?
  #   content << content_tag(:p, "Docent: #{product.teacher}", class: "meta") unless product.teacher.empty?
  #   content << div_for(product.events) do |event|
  #     content_tag(:h2, event.name)
  #     content_tag(:p, (l event.datetime, format: :short), class: "meta")
  #     content_tag(:p, event.duration, class: "meta")
  #   end
  #   raw content
  # end

  # def products_listing(products = @products)
  #   content = ""
  #   content << content_tag_for(:section, products) do |product|
  #     product_content = ""
  #     product_content << content_tag(:h1, (link_to product.name, product))
  #     product_content << (raw Kramdown::Document.new(product.content).to_html)
  #     # product_content << content_tag(:p, "Locatie: #{product.location}", class: "meta") if product.location
  #     # product_content << content_tag(:p, "Docent: #{product.teacher}", class: "meta") if product.teacher
  #     raw product_content
  #   end
  #   raw content
  # end
end
