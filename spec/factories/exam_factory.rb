FactoryGirl.define do
  factory :exam do
    association :student
    completed true
    remaining_time 2.0
    original_time 3.0
    number_of_questions 5
  end
end