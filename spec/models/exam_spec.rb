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
    exam = build(:exam, student: nil)
    expect(exam.save).to be_falsey
  end

  it 'should not create new exam without completed' do
    exam = build(:exam, completed: nil)
    expect(exam.save).to be_falsey
  end

  it 'should contain student' do
    user = create(:user)
    student = create(:student , user: user)
    exam =create(:exam, student: student)
    expect(exam.student.id == student.id).to be_truthy

  end
end
