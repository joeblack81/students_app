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
    question = build(:question, question_type:nil )
    expect(question.save).to be_falsey
  end

  it 'should create new question with all attributes' do

    question = build(:question )
    expect(question.save).to be_truthy

  end



end
