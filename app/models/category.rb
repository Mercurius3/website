class Category < ActiveRecord::Base
  attr_accessible :name, :position
  acts_as_list

  has_many :products
end
