require 'rails_helper'

RSpec.describe Bookmark, type: :model do

  it 'class Should exist' do
    expect(Object.const_defined?('Bookmark')).to be_truthy
  end

  it 'should has attribute bookmarkable_id' do
    expect(Bookmark.new.has_attribute?(:bookmarkable_id)).to be_truthy
  end

  it 'should has attribute bookmarkable_type' do
    expect(Bookmark.new.has_attribute?(:bookmarkable_type)).to be_truthy
  end

  it 'should has attribute student_id' do
    expect(Bookmark.new.has_attribute?(:student_id)).to be_truthy
  end

  it 'should not create new bookmark without student_id' do
    x =Bookmark.new(bookmarkable_id: 1 , bookmarkable_type: 1, student_id: nil)
    expect(x.save).to be_falsey
  end

  it 'should contain student' do
    user = User.create(email:'joe@joe.com', password:'12345678')
    student = Student.create(name: 'mohamed' , user_id: user.id)
    bookmark =Bookmark.create(bookmarkable_id: 1 , bookmarkable_type: 1, student_id: student.id)
    expect(bookmark.student.id == student.id).to be_truthy

  end

end
