class Product < ActiveRecord::Base
  attr_accessible :active, :content, :location, :name, :position, :price, :teacher
  
  validates_uniqueness_of :position
  acts_as_list
end
