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
    x =DevicesInfo.new(udid: "xxxx" , user_id: nil)
    expect(x.save).to be_falsey
  end

  it 'should contain user' do
    user = User.create(email:'joe@joe.com', password:'12345678')
    device_info =DevicesInfo.create(udid: "xxxx" , user_id: user.id)
    expect(device_info.user.id == user.id).to be_truthy

  end


end
