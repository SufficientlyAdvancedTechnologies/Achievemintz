FactoryGirl.define do
  factory :user do
    confirmed_at Time.now
    sequence(:name)  {|n| "Test User #{n}"}
    sequence(:email) {|n| "test#{n}@example.com"}
    password "please123"

    trait :admin do
      role 'admin'
    end

  end
end
