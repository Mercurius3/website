require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods

  def setup
    @product = build(:product_with_events)
  end

  test "product should have event" do
    puts @product.events.first.name
    assert_not_nil @product.events
  end

  test "product should have name" do
    @product.name = nil
    assert !@product.save, 'Saved product without name'
  end

  test "product should have content" do
    @product.content = nil
    assert !@product.save, 'Saved product without content'
  end

  test "product should have category" do
    @product.category = nil
    assert !@product.save, 'Saved product without category'
  end
end
