class User < ActiveRecord::Base
  attr_accessible :date_of_birth, :email, :first_name, :last_name, :phone_number, :postcode, :sex
end
