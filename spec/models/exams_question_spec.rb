require 'rails_helper'

RSpec.describe ExamsQuestion, type: :model do

  it 'class Should exist' do
    expect(Object.const_defined?('ExamsQuestion')).to be_truthy
  end

  it 'should has attribute user_answers' do
    expect(ExamsQuestion.new.has_attribute?(:user_answers)).to be_truthy
  end

  it 'should has attribute marked' do
    expect(ExamsQuestion.new.has_attribute?(:marked)).to be_truthy
  end

  it 'should has attribute correct' do
    expect(ExamsQuestion.new.has_attribute?(:correct)).to be_truthy
  end

  it 'should has attribute question_id' do
    expect(ExamsQuestion.new.has_attribute?(:question_id)).to be_truthy
  end

  it 'should has attribute exam_id' do
    expect(ExamsQuestion.new.has_attribute?(:exam_id)).to be_truthy
  end

  it 'should not create new exam_question without user_answers' do
    exam_question = build(:exams_question, user_answers: nil)
    expect(exam_question.save).to be_falsey
  end

  it 'should not create new exam_question without question_id' do
    exam_question = build(:exams_question, question: nil)
    expect(exam_question.save).to be_falsey
  end

  it 'should not create new exam_question without exam_id' do
    exam_question = build(:exams_question, exam: nil)
    expect(exam_question.save).to be_falsey
  end

  it 'should contain question' do
    question_type = create(:question_type)
    question = create(:question, question_type: question_type)
    exam_question= create(:exams_question, question: question)
    expect(exam_question.question.id == question.id).to be_truthy

  end

  it 'should contain exams' do
    question_type = create(:question_type)
    question = create(:question, question_type: question_type)
    user = create(:user)
    student = create(:student, user: user)
    exam = create(:exam, student: student)
    exam_question = create(:exams_question, question: question, exam: exam)
    expect(exam_question.exam.id == exam.id).to be_truthy

  end

end
