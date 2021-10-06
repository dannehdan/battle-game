require 'player'

describe Player do
  let(:default_hp) { Player::DEFAULT_HP }
  subject(:charlotte) { Player.new('Charlotte') }

  describe '#name' do
    it 'returns the name' do
      expect(charlotte.name).to eq 'Charlotte'
    end
  end

  describe '#hp' do
    it 'sets default hp' do
      expect(charlotte.hit_points).to eq default_hp
    end
  end
end