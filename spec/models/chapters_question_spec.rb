require 'rails_helper'

RSpec.describe ChaptersQuestion, type: :model do

  it 'class Should exist' do
    expect(Object.const_defined?('ChaptersQuestion')).to be_truthy
  end

  it 'should has attribute chapter_id' do
    expect(ChaptersQuestion.new.has_attribute?(:chapter_id)).to be_truthy
  end

  it 'should has attribute question_id' do
    expect(ChaptersQuestion.new.has_attribute?(:question_id)).to be_truthy
  end

  it 'should has attribute weight' do
    expect(ChaptersQuestion.new.has_attribute?(:weight)).to be_truthy
  end

  it 'should not create new chapters_question without chapter_id' do
    chapter_question = build(:chapters_question, chapter: nil )
    expect(chapter_question.save).to be_falsey
  end

  it 'should not create new chapters_question without question_id' do
    chapter_question = build(:chapters_question, question: nil )
    expect(chapter_question.save).to be_falsey
  end

  it 'should  create new chapters_question with all attributes ' do
    subj = create(:subject)
    question_type = create(:question_type)
    question = create(:question, question_type: question_type)
    chapter = create(:chapter, subject: subj )
    chapter_question = create(:chapters_question, question: question , chapter: chapter)
    expect(chapter_question.save).to be_truthy
  end

  it 'should contain chapter' do
    subj = create(:subject)
    question_type = create(:question_type)
    question = create(:question, question_type: question_type)
    chapter = create(:chapter, subject: subj )
    chapter_question = create(:chapters_question, question: question , chapter: chapter)
    expect(chapter.chapters_questions.first.id == chapter_question.id).to be_truthy

  end

end
