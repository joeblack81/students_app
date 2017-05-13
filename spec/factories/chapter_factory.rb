FactoryGirl.define do
  factory :chapter do
    association :subject
    weight 2
    name 'knowledge area'
    icon 'xxxx'
  end
end