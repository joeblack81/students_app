require 'rails_helper'

RSpec.describe Question, type: :model do
  it 'class Should exist' do
    expect(Object.const_defined?('Question')).to be_truthy
  end

  it 'should has attribute header' do
    expect(Question.new.has_attribute?(:header)).to be_truthy
  end

  it 'should has attribute possible_answers' do
    expect(Question.new.has_attribute?(:possible_answers)).to be_truthy
  end

  it 'should has attribute correct_answer' do
    expect(Question.new.has_attribute?(:correct_answer)).to be_truthy
  end

  it 'should has attribute explanation' do
    expect(Question.new.has_attribute?(:explanation)).to be_truthy
  end

  it 'should has attribute question_type_id' do
    expect(Question.new.has_attribute?(:question_type_id)).to be_truthy
  end

  it 'should not create new question without question_type_id' do
    x =Question.new(header: "test" , possible_answers: {test: "test"}, correct_answer: {test: "test"}, explanation: {test: "test"},question_type_id: nil )
    expect(x.save).to be_falsey
  end

  it 'should create new question with all attributes' do

    question_type = QuestionType.create(name: "question name")
    x =Question.new(header: "test" , possible_answers: {test: "test"}, correct_answer: {test: "test"}, explanation: {test: "test"},question_type_id: question_type.id )
    expect(x.save).to be_truthy

  end



end
