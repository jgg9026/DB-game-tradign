require 'rails_helper'

RSpec.describe Game, type: :model do
  context "testing game model" do
  	it{should have_many :users}
    it{should have_many :user_games}
    it{should have_many :platforms}
    it{should have_many :game_platforms}

  	it "It is ok" do
  	game=FactoryGirl.build(:game)
  	expect(game.save).to eq(true)
    end
  end
end
  
