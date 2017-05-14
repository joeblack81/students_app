FactoryGirl.define do
  factory :bookmark do
    association :student
    trait :bookmark_reading do
      association :bookmarkable, factory: :reading
    end
    trait :bookmark_question do
      association :bookmarkable, factory: :question
    end
  end
end