require 'rails_helper'

RSpec.describe Subject, type: :model do
  it 'class Should exist' do
    expect(Object.const_defined?('Subject')).to be_truthy
  end

  it 'should has attribute name' do
    expect(Subject.new.has_attribute?(:name)).to be_truthy
  end

  it 'should has attribute token' do
    expect(Subject.new.has_attribute?(:token)).to be_truthy
  end

  it 'should has attribute mobile_version' do
    expect(Subject.new.has_attribute?(:mobile_version)).to be_truthy
  end

  it 'should has attribute backend_version' do
    expect(Subject.new.has_attribute?(:backend_version)).to be_truthy
  end

  it 'should has attribute menu_items' do
    expect(Subject.new.has_attribute?(:menu_items)).to be_truthy
  end

  it 'should not create new subject without name' do
     x =Subject.new(name: nil , mobile_version: '1.0', backend_version: '1.0', token: 'xxxx', menu_items:{test: 'test'})
     expect(x.save).to be_falsey
  end

  it 'should not create new subject without mobile_version' do
    x =Subject.new(name: 'PmP' , mobile_version: nil, backend_version: '1.0', token: 'xxxx', menu_items:{test: 'test'})
    expect(x.save).to be_falsey
  end

  it 'should not create new subject without backend_version' do
    x =Subject.new(name: 'PmP' , mobile_version: '1.0', backend_version: nil, token: 'xxxx', menu_items:{test: 'test'})
    expect(x.save).to be_falsey
  end

  it 'should not create new subject without token' do
    x =Subject.new(name: 'PmP' , mobile_version: '1.0', backend_version: '1.0', token: nil, menu_items:{test: 'test'})
    expect(x.save).to be_falsey
  end

  it 'should not create new subject without menu_items' do
    x =Subject.new(name: 'PmP' , mobile_version: '1.0', backend_version: '1.0', token: 'xxx', menu_items:{})
    expect(x.save).to be_falsey
  end

  it 'should  create new subject with all data not null' do
    x =Subject.new(name: 'PmP' , mobile_version: '1.0', backend_version: '1.0', token: 'xxx', menu_items:{test: 'test'})
    expect(x.save!).to be_truthy
  end

  it 'should contain subject' do
    subj = Subject.create(name: 'PmP' , mobile_version: '1.0', backend_version: '1.0', token: 'xxx', menu_items:{test: 'test'})
    reading = Reading.create(reading_type_id: 1 , header: '1.0', body: '1.0', subject_id: subj.id)
    expect(subj.readings.first.id == reading.id).to be_truthy
  end

end
