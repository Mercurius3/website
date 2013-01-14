class Subscription < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :product, :accept_conditions

  validates_presence_of :product, message: "Voor welk product wilt u zich inschrijven?"
  validates_presence_of :first_name, message: "U heeft uw voornaam niet ingevuld"
  validates_presence_of :last_name, message: "U heeft uw achternaam niet ingevuld"
  validates_presence_of :email, message: "U heeft geen emailadres ingevuld"
  validates_presence_of :accept_conditions, message: "U dient de voorwaarden te accepteren"
end
