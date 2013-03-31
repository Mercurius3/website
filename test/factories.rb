# This will guess the Subscription class
FactoryGirl.define do
  factory :subscription do
    accept_conditions true
    user
    product
  end

  factory :product do
    name "Museumgroep"
    content "Dit is een voorbeeld van een product."
  end

  factory :user do
    first_name "John"
    last_name "Doe"
    email "johndoe@example.com"
  end

  factory :message do
    content "Nieuw bericht"
    user
  end
end