require 'rails_helper'

RSpec.describe Rate, type: :model do
	let(:rate) {FactoryGirl.build(:rate)}
	context "Testing Rate model" do
		it "has a score" do
			expect(rate.save).to eq(true)
		end
		#it { should have_db_index(:exchange_id) }
		it "doesn't have a rate" do
			rate.rate=nil
			expect(rate.save).to eq(false)
		end
		it {should belong_to :exchange}
		it {should validate_presence_of :rate}
	end
	
end
