require 'rails_helper'

RSpec.describe GamePlatform, type: :model do
  let(:gameplatform) {FactoryGirl.build(:game_platform)}
  context "Testin join table game_plataform" do
  	it "is ok" do
  		expect(gameplatform.save).to eq(true)
  	end
  	it "It doesn't have game_id" do
  		gameplatform.game_id=nil
  		expect(gameplatform.save).to eq(false)
    end
    it "It doesn't have platform_id" do
  		gameplatform.platform_id=nil
  		expect(gameplatform.save).to eq(false)
    end
    it { should have_db_index(:game_id) }
    it { should have_db_index(:platform_id) }
    it {should belong_to (:platform)}
  	it {should belong_to (:game)}
  end
end
