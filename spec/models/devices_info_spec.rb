require 'rails_helper'

RSpec.describe DevicesInfo, type: :model do

  it 'class Should exist' do
    expect(Object.const_defined?('DevicesInfo')).to be_truthy
  end

  it 'should has attribute udid' do
    expect(DevicesInfo.new.has_attribute?(:udid)).to be_truthy
  end

  it 'should has attribute user_id' do
    expect(DevicesInfo.new.has_attribute?(:user_id)).to be_truthy
  end

  it 'should not create new device_info without user_id' do
    device_info = build(:devices_info, user: nil)
    expect(device_info.save).to be_falsey
  end

  it 'should contain user' do
    user = create(:user)
    device_info = create(:devices_info, user: user)
    expect(device_info.user.id == user.id).to be_truthy

  end


end
