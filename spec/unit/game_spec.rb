require "./models/game.rb"

describe Game do
  let(:player_1) { double :player, damage: nil }
  let(:player_2) { double :player, damage: nil }

  let(:game) { Game.new(player_1: player_1, player_2: player_2) }
  
  it "Should attack player for 10 damage" do
    damage_value = 10

    game.attack(player_2, damage_value)

    expect(player_2).to have_received(:damage).with(damage_value)
  end

  it "should store player 1 instance" do
    expect(game.player_1).to eq(player_1)
  end

  it "should store player 2 instance" do
    expect(game.player_2).to eq(player_2)
  end
end
