require 'rails_helper'

RSpec.describe Chapter, type: :model do
  it 'class Should exist' do
    expect(Object.const_defined?('Chapter')).to be_truthy
  end

  it 'should has attribute subject_id' do
    expect(Chapter.new.has_attribute?(:subject_id)).to be_truthy
  end

  it 'should has attribute weight' do
    expect(Chapter.new.has_attribute?(:weight)).to be_truthy
  end

  it 'should has attribute name' do
    expect(Chapter.new.has_attribute?(:name)).to be_truthy
  end

  it 'should has attribute icon' do
    expect(Chapter.new.has_attribute?(:icon)).to be_truthy
  end

  it 'should not create new chapter without subject_id' do
    chapter = build(:chapter, subject: nil)
    expect(chapter.save).to be_falsey
  end

  it 'should not create new chapter without weight' do
    chapter = build(:chapter, weight: nil)
    expect(chapter.save).to be_falsey
  end

  it 'should not create new chapter without name' do
    chapter = build(:chapter, name: nil)
    expect(chapter.save).to be_falsey
  end

  it 'should  create new chapter with all attributes' do
    chapter = create(:chapter)
    expect(chapter.save).to be_truthy
  end

  it 'should contain subject' do
    subj = create(:subject)
    chapter = Chapter.create(subject_id: subj.id, weight: 1, name: 'knowledge area', icon: 'xxxx')
    expect(subj.chapters.first.id == chapter.id).to be_truthy
  end

  it 'should be sorted' do
    subj = create(:subject)
    Chapter.create!([{subject_id: subj.id, weight: 1, name: 'knowledge area', icon: 'xxxx'},
                     {subject_id: subj.id, weight: 3, name: 'knowledge area', icon: 'xxxx'},
                     {subject_id: subj.id, weight: 2, name: 'knowledge area', icon: 'xxxx'}])
    expect(subj.chapters.map(&:weight)== Chapter.all.map(&:weight).sort).to be_truthy
  end
end
