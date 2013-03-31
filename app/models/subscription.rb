class Subscription < ActiveRecord::Base
  attr_accessible :user_attributes, :accept_conditions, :product_id, :user_id

  validates_presence_of :product_id, message: "Voor welk product wilt u zich inschrijven?"
  validates_associated :user
  validates_presence_of :accept_conditions, message: "U dient de voorwaarden te accepteren"

  belongs_to :product
  belongs_to :user
  accepts_nested_attributes_for :user
end
