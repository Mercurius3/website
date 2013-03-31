class Message < ActiveRecord::Base
  attr_accessible :content, :user_attributes

  validates_presence_of :content
  validates_presence_of :user

  belongs_to :user
  accepts_nested_attributes_for :user
end
