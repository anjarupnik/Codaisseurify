FactoryGirl.define do
  factory :song do
    name   { Faker::Name.name }
    link   { Faker::Internet.url}
    
  end
end
