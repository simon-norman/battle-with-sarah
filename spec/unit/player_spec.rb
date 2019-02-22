require './models/player.rb'

describe Player do
  let(:name) { 'Simon' }
  let(:hp) { 100 }
  let(:player) { Player.new(name: name, hp: hp) }

  context 'given player has been created with name and hp' do
    it 'should return the name when requested' do
      expect(player.name).to eq(name)
    end

    it 'should return the hp when requested' do
      expect(player.hp).to eq(hp)
    end

    it 'should reduce the number of hp by specified amount' do
      player.damage(10)

      expect(player.hp).to eq(hp - 10)
    end
  end
end
