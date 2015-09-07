require 'rails_helper'

RSpec.describe GamePlatform, type: :model do
  context "Testin join table game_plataform" do
  	it "it is ok" do
  		gameplatform=FactoryGirl.build(:game_platform)
  		expect(gameplatform.save).to eq(true)
  	end
  	it "It doesn't have game_id" do
  		gameplatform=FactoryGirl.build(:no_game_id)
  		expect(gameplatform.save).to eq(false)
    end
    it "It doesn't have platform_id" do
  		gameplatform=FactoryGirl.build(:no_platform_id)
  		expect(gameplatform.save).to eq(false)
    end
    it { should have_db_index(:game_id) }
    it { should have_db_index(:platform_id) }
    it {should belong_to (:platform)}
  	it {should belong_to (:game)}
  end
end
