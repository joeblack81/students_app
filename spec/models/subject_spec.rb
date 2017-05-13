require 'rails_helper'

RSpec.describe Subject, type: :model do
  before(:each) do
    @subject = build(:subject)
  end

  it 'class Should exist' do
    expect(Object.const_defined?('Subject')).to be_truthy
  end

  it 'should has attribute name' do
    expect(@subject.has_attribute?(:name)).to be_truthy
  end

  it 'should has attribute token' do
    expect(@subject.has_attribute?(:token)).to be_truthy
  end

  it 'should has attribute mobile_version' do
    expect(@subject.has_attribute?(:mobile_version)).to be_truthy
  end

  it 'should has attribute backend_version' do
    expect(@subject.has_attribute?(:backend_version)).to be_truthy
  end

  it 'should has attribute menu_items' do
    expect(@subject.has_attribute?(:menu_items)).to be_truthy
  end

  it 'should not create new subject without name' do
    @subject.name = nil
    expect(@subject.save).to be_falsey
  end

  it 'should not create new subject without mobile_version' do
    @subject.mobile_version = nil
    expect(@subject.save).to be_falsey
  end

  it 'should not create new subject without backend_version' do
    @subject.backend_version = nil
    expect(@subject.save).to be_falsey
  end

  it 'should not create new subject without token' do
    @subject.token = nil
    expect(@subject.save).to be_falsey
  end

  it 'should not create new subject without menu_items' do
    @subject.menu_items = {}
    expect(@subject.save).to be_falsey
  end

  it 'should  create new subject with all data not null' do
    expect(@subject.save!).to be_truthy
  end

  it 'should contain subject' do
    subj = create(:subject)
    reading = create(:reading, subject: subj)
    expect(subj.readings.first.id == reading.id).to be_truthy
  end

end
