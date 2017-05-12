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
    x =ChaptersQuestion.new(chapter_id: nil , question_id: 1, weight: 1)
    expect(x.save).to be_falsey
  end

  it 'should not create new chapters_question without question_id' do
    x =ChaptersQuestion.new(chapter_id: 1 , question_id: nil, weight: 1)
    expect(x.save).to be_falsey
  end

  it 'should  create new chapters_question with all attributes ' do
    question_type = QuestionType.create(name: "question name")
    subj = Subject.create(name: 'PmP' , mobile_version: '1.0', backend_version: '1.0', token: 'xxx', menu_items:{test: 'test'})
    question = Question.create(header: "test" , possible_answers: {test: "test"}, correct_answer: {test: "test"}, explanation: {test: "test"},question_type_id: question_type.id )
    chapter =Chapter.create(subject_id: subj.id , weight: 1, name: 'knowledge area', icon: 'xxxx')
    x =ChaptersQuestion.new(chapter_id: chapter.id , question_id: question.id, weight: 1)
    expect(x.save).to be_truthy
  end

  it 'should contain chapter' do
    subj = Subject.create(name: 'PmP' , mobile_version: '1.0', backend_version: '1.0', token: 'xxx', menu_items:{test: 'test'})
    question_type = QuestionType.create(name: "question name")
    question = Question.create(header: "test" , possible_answers: {test: "test"}, correct_answer: {test: "test"}, explanation: {test: "test"},question_type_id: question_type.id )
    chapter = Chapter.create(subject_id: subj.id , weight: 1, name: 'knowledge area', icon: 'xxxx')
    chapter_question =ChaptersQuestion.create!(chapter_id: chapter.id , question_id: question.id, weight: 1)
    expect(chapter.chapters_questions.first.id == chapter_question.id).to be_truthy

  end

end
