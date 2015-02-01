require 'rails_helper'

RSpec.describe Achievements::Badge, :type => :model do
  before(:each) { @badge = FactoryGirl.create(:achievements_badge) }

  subject { @badge }

  it { should belong_to :achievements_unlock }
  it { should belong_to :player }
end
