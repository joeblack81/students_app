FactoryGirl.define do
  factory :subject do
    name 'PmP'
    mobile_version '1.0'
    backend_version '1.0'
    token 'xxx'
    menu_items({test: 'test'})
  end
end 