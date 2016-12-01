require 'spec_helper'

describe Tag, type: :model do
  it 'should have a valid factory' do
    expect(FactoryGirl.build(:tag)).to be_valid
  end
  it { is_expected.to validate_presence_of :name}
  it { is_expected.to validate_uniqueness_of :name}

end
