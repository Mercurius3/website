class Event < ActiveRecord::Base
  attr_accessible :datetime, :duration, :name, :product_id

  belongs_to :product
end
