class Product < ActiveRecord::Base
  attr_accessible :active, :content, :location, :name, :position, :price, :teacher, :subscriptions_attributes, :events_attributes

  validates_uniqueness_of :position
  acts_as_list

  has_many :subscriptions
  has_many :events
  accepts_nested_attributes_for :events, :reject_if => :all_blank, :allow_destroy => true
end
