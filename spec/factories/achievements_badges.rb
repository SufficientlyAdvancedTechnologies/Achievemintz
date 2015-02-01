FactoryGirl.define do
  factory :achievements_badge, :class => 'Achievements::Badge' do
    achievements_unlock
    player
    multiplier 1.5
    status 1
  end

end
