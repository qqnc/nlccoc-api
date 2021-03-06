require 'rails_helper'

RSpec.describe Organization, type: :model do

  before(:all) do
    @org1 = create(:organization)
  end

  it 'has a valid factory' do
    expect(@org1).to be_valid
  end

  context 'relations' do
    it { should have_many(:users) }
    it { should have_many(:org_depts)}
    it { should have_many(:departments).through(:org_depts)}
  end


  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:address) }
  end
end