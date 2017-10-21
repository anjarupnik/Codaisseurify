FactoryGirl.define do
  factory :photo do
    image  { Faker::Name.name }
  end
end
