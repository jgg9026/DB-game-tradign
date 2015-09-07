require 'rails_helper'

RSpec.describe Platform, type: :model do
	it{should have_many (:game_platforms)}
	it{should have_many :games}
	
	context "testing Platform model" do
		it "It is ok" do
			platform=FactoryGirl.build(:platform)
			expect(platform.save).to eq(true)
		end
		it "It doesn't have platform" do
			platform=FactoryGirl.build(:no_platform)
			expect(platform.save).to eq(false)
		end
		it "it doesn't have console" do
			platform=FactoryGirl.build(:no_console)
			expect(platform.save).to eq(false)
		end
	end
end
