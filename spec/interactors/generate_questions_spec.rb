require 'rails_helper'
describe GenerateQuestions do

  it "call should generate question" do
    questions = GenerateQuestions.call(number_of_questions: attributes_for(:exam)[:number_of_questions], response: {})
    expect(questions).to be_a_success
  end
end