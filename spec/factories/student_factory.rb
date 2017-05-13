FactoryGirl.define do
  factory :student do
    name "mohamed"
    association :user
  end
end