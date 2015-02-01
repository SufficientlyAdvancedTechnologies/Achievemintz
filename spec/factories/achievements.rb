FactoryGirl.define do
  factory :achievement do
    sequence(:name) {|n| "Achievement #{n}" }
    description "A test achievement"
    status 'enabled'
    app nil
    created_by
  end

end
