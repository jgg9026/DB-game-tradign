require 'rails_helper'

RSpec.describe Platform, type: :model do

	let(:platform) {FactoryGirl.build(:platform)}
	
	context "testing Platform model" do
		it "is ok" do
			expect(platform.save).to eq(true)
		end
		it "doesn't have platform" do
			platform.platform=nil
			expect(platform.save).to eq(false)
		end
		it "doesn't have console" do
			platform.console=nil
			expect(platform.save).to eq(false)
		end
		it{should have_many (:game_platforms)}
		it{should have_many :games}
	end
end
