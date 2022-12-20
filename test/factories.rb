FactoryBot.define do
  factory :user do |f|
    f.sequence(:email) { |n| "test#{n}@account.com" }
    f.password { "password" }
    f.password_confirmation { |d| d.password }
  end
  #create a new user that owns this person
  factory :person do |f|
    f.sequence(:first_name) { |n| "Person#{n}" }
    f.sequence(:last_name) { |n| "Person#{n}" }
    f.association :user
  end
end

#allows us to use the model User in order to simulate an existing user
