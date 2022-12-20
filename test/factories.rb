FactoryBot.define do
  factory :user do |f|
    f.sequence(:email) { |n| "test#{n}@account.com" }
    f.password { "password" }
    f.password_confirmation { |d| d.password }
  end
end

#allows us to use the model User in order to simulate an existing user
