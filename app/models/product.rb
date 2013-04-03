class Product < ActiveRecord::Base
  attr_accessible :active, :content, :location, :name, :position, :price, :teacher, :subscriptions_attributes, :events_attributes, :category_id

  validates_uniqueness_of :position
  validates_presence_of :name, :content, :category_id

  acts_as_list

  has_many :subscriptions
  has_many :users, through: :subscriptions
  has_many :events
  belongs_to :category
  accepts_nested_attributes_for :events, :reject_if => :all_blank, :allow_destroy => true
end
