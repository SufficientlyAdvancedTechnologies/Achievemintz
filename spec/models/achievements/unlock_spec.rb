require 'rails_helper'

RSpec.describe Achievements::Unlock, :type => :model do
  before(:each) { @unlock = FactoryGirl.create(:achievements_unlock) }

  subject { @unlock }

  it { should belong_to :achievement }
  it { should belong_to :player }
  it { should have_one :badge }
end
