class Message < ActiveRecord::Base
  attr_accessible :content, :user_attributes

  validates_presence_of :content, :user_id
  validates_associated :user

  belongs_to :user
  accepts_nested_attributes_for :user
end
