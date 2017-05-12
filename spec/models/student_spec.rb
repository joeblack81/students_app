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
   x = Student.new(name: nil , user_id: 1)
   expect(x.save).to be_falsey
  end

  it 'should not create student without name' do
    x = Student.new(name: 'mohamed' , user_id: nil)
    expect(x.save).to be_falsey
  end

  it 'should contain user' do
    user = User.create(email:'joe@joe.com', password:'12345678')
    x = Student.new(name: 'mohamed' , user_id: user.id)

  end

end
