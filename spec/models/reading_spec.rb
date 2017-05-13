require 'rails_helper'

RSpec.describe Reading, type: :model do
  it 'class Should exist' do
    expect(Object.const_defined?('Reading')).to be_truthy
  end

  it 'should has attribute reading_type_id' do
    expect(Reading.new.has_attribute?(:reading_type_id)).to be_truthy
  end

  it 'should has attribute header' do
    expect(Reading.new.has_attribute?(:header)).to be_truthy
  end

  it 'should has attribute body' do
    expect(Reading.new.has_attribute?(:body)).to be_truthy
  end

  it 'should has attribute subject_id' do
    expect(Reading.new.has_attribute?(:subject_id)).to be_truthy
  end

  it 'should not create new reading without reading_type_id' do
    x =  build(:reading, subject: nil)
    expect(x.save).to be_falsey
  end

  it 'should not create new reading without subject_id' do
    subj = create(:subject)
    reading_type = create(:reading_type)
    reading = create(:reading , subject: subj, reading_type: reading_type )
    #x =Reading.new(reading_type_id: 1 , header: '1.0', body: '1.0', subject_id: nil)
    expect(reading.save).to be_falsey
  end

  it 'should  create new reading without missing data' do
    subj = create(:subject)
    reading_type = create(:reading_type)
    reading = create(:reading , subject: subj, reading_type: reading_type )
    expect(reading.save!).to be_truthy
  end


  it 'should contain subject' do
    subj = create(:subject)
    reading_type = ReadingType.create(name: 'type name' )
    reading = Reading.create(reading_type_id: reading_type.id , header: '1.0', body: '1.0', subject_id: subj.id)
    expect(reading.subject.id == subj.id).to be_truthy

  end

  it 'should contain reading_type' do
    subj = create(:subject)
    reading_type = ReadingType.create(name: 'type name' )
    reading = Reading.create(reading_type_id: reading_type.id , header: '1.0', body: '1.0', subject_id: subj.id)
    expect(reading.subject.id == subj.id).to be_truthy

  end




end

