class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :first_name, :last_name, :phone_number, :postcode, :sex, :messages_attributes, :subscriptions_attributes
  validates_presence_of :first_name, message: "U heeft uw voornaam niet ingevuld"
  validates_presence_of :last_name, message: "U heeft uw achternaam niet ingevuld"
  validates :email,
            :presence => true,
            # :uniqueness => true,
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i }
  has_many :messages
  has_many :subscriptions
end
