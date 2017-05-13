require 'rails_helper'

RSpec.describe Exam, type: :model do
  it 'class Should exist' do
    expect(Object.const_defined?('Exam')).to be_truthy
  end

  it 'should has attribute student_id' do
    expect(Exam.new.has_attribute?(:student_id)).to be_truthy
  end

  it 'should has attribute completed' do
    expect(Exam.new.has_attribute?(:completed)).to be_truthy
  end

  it 'should has attribute remaining_time' do
    expect(Exam.new.has_attribute?(:remaining_time)).to be_truthy
  end

  it 'should has attribute original_time' do
    expect(Exam.new.has_attribute?(:original_time)).to be_truthy
  end

  it 'should has attribute number_of_questions' do
    expect(Exam.new.has_attribute?(:number_of_questions)).to be_truthy
  end

  it 'should not create new exam without student_id' do
    x =Exam.new(student_id: nil , completed: true, remaining_time: 2.0, original_time: 3.0, number_of_questions: 5)
    expect(x.save).to be_falsey
  end

  it 'should not create new exam without completed' do
    x =Exam.new(student_id: 1 , completed: nil, remaining_time: 2.0, original_time: 3.0, number_of_questions: 5)
    expect(x.save).to be_falsey
  end

  it 'should contain student' do
    user = User.create(email:'joe@joe.com', password:'12345678')
    student = Student.create(name: 'mohamed' , user_id: user.id)
    exam =Exam.create(student_id: student.id , completed: true, remaining_time: 2.0, original_time: 3.0, number_of_questions: 5)
    expect(exam.student.id == student.id).to be_truthy

  end
end
