require 'rails_helper'

RSpec.describe Organisation, type: :model do
  it 'should have a valid factory' do
    expect(FactoryGirl.build(:staff)).to be_valid
  end

  it { is_expected.to validate_presence_of :first_name}
  it { is_expected.to validate_presence_of :last_name}
  it { is_expected.to validate_presence_of :role}
end
