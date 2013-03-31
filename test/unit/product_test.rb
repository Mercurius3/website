require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  def setup
    @product = build(:product)
  end

  test "product should have name" do
    @product.name = nil
    assert !@product.save, 'Saved product without name'
  end

  test "product should have content" do
    @product.content = nil
    assert !@product.save, 'Saved product without content'
  end
end
