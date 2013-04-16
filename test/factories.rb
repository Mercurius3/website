# This will guess the Subscription class
FactoryGirl.define do
  factory :subscription do
    accept_conditions true
    user
    product
  end

  factory :event do
    name "Les 1"
    datetime Time.now
    duration 3600
    # location 'Zijlkwartier'
    product
  end

  factory :product do
    name "Museumgroep"
    content "Dit is een voorbeeld"
    category
    factory :product_with_events do
      after(:build) do |product|
        FactoryGirl.create(:event, product: product)
      end
    end

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

  factory :category do
    name "Rondleiding"
    position 1
  end

  factory :page do
    id "Home"
  end
end