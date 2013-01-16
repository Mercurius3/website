module WebfontsHelper
  def webfont_for_current_environment
    stylesheet_link_tag(webfont_url)
  end

  def webfont_url
    if Rails.env.development?
      "http://f.fontdeck.com/s/css/l4MsFun30OJhB9DTDGcb8JQSAOQ/website.dev/2208.css"
    elsif Rails.env.production?
      "http://f.fontdeck.com/s/css/l4MsFun30OJhB9DTDGcb8JQSAOQ/lassche-lassche.nl/2208.css"
    elsif Rails.env.staging?
      "http://f.fontdeck.com/s/css/l4MsFun30OJhB9DTDGcb8JQSAOQ/staging.lassche-lassche.nl/2208.css"
    end
  end

end