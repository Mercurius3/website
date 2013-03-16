require 'test_helper'

class PageTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end
  test "page is shown" do
    page = Page.new(:title => "new page")
    assert page.title = "new page"
  end
end
