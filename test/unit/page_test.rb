require 'test_helper'

class PageTest < ActiveSupport::TestCase
  test "page is shown" do
    page = Page.new(:name => "new page")
    assert page.name = "new page"
  end
end
