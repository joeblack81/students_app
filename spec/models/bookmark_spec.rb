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
    bookmark = build(:bookmark, student: nil)
    expect(bookmark.save).to be_falsey
  end

  it 'should contain student' do
    user = create(:user)
    student = create(:student, user: user)
    bookmark = create(:bookmark, student: student)
    expect(bookmark.student.id == student.id).to be_truthy

  end

  it 'should contain bookmarkable reading' do
    user = create(:user)
    student = create(:student, user: user)
    bookmark = create(:bookmark, :bookmark_reading, student: student)
    expect(bookmark.bookmarkable_type == 'Reading').to be_truthy

  end

  it 'should contain bookmarkable question' do
    user = create(:user)
    student = create(:student, user: user)
    bookmark = create(:bookmark, :bookmark_question, student: student)
    expect(bookmark.bookmarkable_type == 'Question').to be_truthy
  end

end
