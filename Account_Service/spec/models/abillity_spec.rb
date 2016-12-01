require 'spec_helper'
require 'cancan/matchers'

describe 'Abilities' do
  subject(:ability) { ::Ability.new(user) }
  before do
    @staff = FactoryGirl.create(:organisation)
  end

  context 'when logged as organisation' do
    let(:user) {FactoryGirl.create(:organisation)}
    it { expect(ability).to be_able_to :update, Tag}
    it { expect(ability).to be_able_to :create, Tag}
    it { expect(ability).to be_able_to :read, Tag}

  end


end
