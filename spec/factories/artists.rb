FactoryGirl.define do
  factory :artist do
    name  { Faker::DragonBall.character }
  end
end
