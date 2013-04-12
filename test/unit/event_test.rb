require 'test_helper'

class EventTest < ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods

  def setup
    # @product = create(:product)
    @product = build(:product)
  end

  #TODO add more tests
  # test "event should have name" do
  #   @product.event.name = nil
  #   assert !@product.event.first.save, "saved event without name"
  # end

  test "to_ics should create calendar" do
    ics = @product.events.first.to_ics
  #   puts @product
  #   assert_not_nil ics, "calendar is empty"
  end

end
