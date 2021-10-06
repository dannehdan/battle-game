require './lib/player'

describe Player do
  subject(:charlotte) { Player.new('Charlotte') }
  subject(:mittens) { Player.new('Mittens') }

  describe '#name' do
    it 'returns the name' do
      expect(charlotte.name).to eq 'Charlotte'
    end
  end

  describe '#hp' do
    it 'sets default hp' do
      expect(charlotte.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#take_damage' do
    it 'reduces the player hit points' do
      expect { charlotte.take_damage }.to change { charlotte.hit_points }.by(-10)
    end
  end
end