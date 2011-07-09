FactoryGirl.define do
  factory :user do |u|
    u.name 'Test User'
    u.email 'user@test.com'
    u.password 'please'
  end
  
  factory :event do |e|
    e.name 'event 1'
  end
end
