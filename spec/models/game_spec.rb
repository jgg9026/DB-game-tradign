require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:game) {FactoryGirl.build(:game)}
  context "testing game model" do
  	it{should have_many :users}
    it{should have_many :user_games}
    it{should have_many :platforms}
    it{should have_many :game_platforms}

    it "is ok" do
  	 expect(game.save).to eq(true)
    end
    it "doesn't have a name" do
      game.name=nil
      expect(game.save).to eq(false)
    end
    it "doesn't have maker field" do
      game.maker=nil
      expect(game.save).to eq(false)
    end
    it "doesn't have launch_date" do
      game.launch_date=nil
      expect(game.save).to eq(false)
    end
  end
end
  
