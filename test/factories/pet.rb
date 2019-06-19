FactoryBot.define do
  factory :pet do
    breed { Faker::Creature::Dog.breed }
    size    { Faker::Creature::Dog.size }
    phone { Faker::PhoneNumber.phone_number }
  end
end
