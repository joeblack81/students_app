require 'rails_helper'

RSpec.describe Student, type: :model do
  it 'class Should exist' do
    expect(Object.const_defined?('Student')).to be_truthy
  end

  it 'should has attribute name' do
    expect(Student.new.has_attribute?(:name)).to be_truthy
  end

  it 'should has attribute user_id' do
    expect(Student.new.has_attribute?(:user_id)).to be_truthy
  end

  it 'should not create student without name' do
   student = build(:student, name:nil)
   expect(student.save).to be_falsey
  end

  it 'should not create student without name' do
    student = build(:student, user:nil)
    expect(student.save).to be_falsey
  end

  it 'should contain user' do
    user = create(:user)
    student = create(:student , user: user)
    expect(student.user.id == user.id).to be_truthy
  end

end
