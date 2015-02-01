FactoryGirl.define do
  factory :achievements_unlock, :class => 'Achievements::Unlock' do
    achievement
    player
    progression 1
    status 1
  end

end
