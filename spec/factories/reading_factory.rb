FactoryGirl.define do
  factory :reading do
    association :reading_type
    header '1.0'
    body '1.0'
    association :subject
  end
end