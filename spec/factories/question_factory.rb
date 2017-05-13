FactoryGirl.define do
  factory :question do
    header "test"
    possible_answers ({test: "test"})
    correct_answer ({test:  "test"})
    explanation ({test: "test"})
    association :question_type
  end
end