FactoryGirl.define do
  factory :bookmark do
    bookmarkable_id 1
    bookmarkable_type 1
    association :student
  end
end