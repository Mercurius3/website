class Message < ActiveRecord::Base
  attr_accessible :content, :user_attributes

  belongs_to :user
  accepts_nested_attributes_for :user
end
