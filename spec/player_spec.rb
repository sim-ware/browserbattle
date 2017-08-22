require 'player'

describe Player do
  subject(:simi) { Player.new('Simi') }
  subject(:luna) { Player.new('Luna') }

  describe '#name' do
    it 'returns the name' do
      expect(simi.name).to eq 'Simi'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(simi.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(luna).to receive(:receive_damage)
      simi.attack(luna)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { simi.receive_damage }.to change { simi.hit_points }.by(-10)
    end
  end
 end
