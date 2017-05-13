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
    x =ExamsQuestion.new(user_answers: nil , marked: true, correct: 1, question_id: 1, exam_id: 1)
    expect(x.save).to be_falsey
  end

  it 'should not create new exam_question without question_id' do
    x =ExamsQuestion.new(user_answers: {test:"test"} , marked: true, correct: 1, question_id: nil, exam_id: 1)
    expect(x.save).to be_falsey
  end

  it 'should not create new exam_question without exam_id' do
    x =ExamsQuestion.new(user_answers: {test:"test"} , marked: true, correct: 1, question_id: 1, exam_id: nil)
    expect(x.save).to be_falsey
  end

  it 'should contain question' do
    question_type = QuestionType.create(name: "question name")
    question =Question.create(header: "test" , possible_answers: {test: "test"}, correct_answer: {test: "test"}, explanation: {test: "test"},question_type_id: question_type.id )
    exam_question=ExamsQuestion.new(user_answers: {test:"test"} , marked: true, correct: 1, question_id: question.id, exam_id: 1)
    expect(exam_question.question.id == question.id).to be_truthy

  end

  it 'should contain exams' do
    question_type = QuestionType.create(name: "question name")
    question =Question.create(header: "test" , possible_answers: {test: "test"}, correct_answer: {test: "test"}, explanation: {test: "test"},question_type_id: question_type.id )
    user = User.create(email:'joe@joe.com', password:'12345678')
    student = Student.create(name: 'mohamed' , user_id: user.id)
    exam =Exam.create(student_id: student.id , completed: true, remaining_time: 2.0, original_time: 3.0, number_of_questions: 5)
    exam_question=ExamsQuestion.new(user_answers: {test:"test"} , marked: true, correct: 1, question_id: question.id, exam_id: exam.id)
    expect(exam_question.exam.id == exam.id).to be_truthy

  end

end
