FactoryGirl.define do
  factory :chapters_question do
    association :chapter
    association :question
    weight 1
  end
end
