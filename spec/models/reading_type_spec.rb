require 'rails_helper'

RSpec.describe ReadingType, type: :model do
  it 'class Should exist' do
    expect(Object.const_defined?('ReadingType')).to be_truthy
  end

  it 'should has attribute name' do
    expect(ReadingType.new.has_attribute?(:name)).to be_truthy
  end

  it 'should not create new QuestionType without name' do
    x = build(:reading_type, name: nil)
    expect(x.save).to be_falsey
  end

  it 'should create new QuestionType with all attrs' do
    x = build(:reading_type)
    expect(x.save).to be_truthy

  end
end
