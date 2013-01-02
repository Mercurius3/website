class Subscription < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :product, :accept_conditions
  
  validates_presence_of :email, :first_name, :last_name, :product, :accept_conditions
end
