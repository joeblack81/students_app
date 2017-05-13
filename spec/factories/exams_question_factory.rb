FactoryGirl.define do
  factory :exams_question do
    user_answers ({test:"test"})
    marked true
    correct 1
    association :question
    association :exam
  end
end