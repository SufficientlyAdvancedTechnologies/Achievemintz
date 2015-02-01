require 'rails_helper'

RSpec.describe Achievement, :type => :model do
  before(:each) { @achievement = FactoryGirl.create(:achievement) }

  subject { @achievement }

  it { should belong_to :created_by }
  it { should belong_to :app }
  it { should have_many :unlocks }
  it { should have_many :players }
end
