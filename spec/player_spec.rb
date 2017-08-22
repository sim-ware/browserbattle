require 'player'

describe Player do
  subject(:simi) { Player.new('Simi') }

  describe '#name' do
    it 'returns the name' do
      expect(simi.name).to eq 'Simi'
    end
  end
end
