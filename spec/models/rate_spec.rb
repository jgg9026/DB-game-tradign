require 'rails_helper'

RSpec.describe Rate, type: :model do
	context "Testing Rate model" do
		it "has a score" do
			rate=FactoryGirl.build(:rate)
			expect(rate.save).to eq(true)
		end

		it {should belong_to :exchange}
		it {should validate_presence_of :rate}
		#it { should have_db_index(:exchange_id) }
		it "doesn't have a rate" do
			rate=FactoryGirl.build(:no_exchange_id)
			expect(rate.save).to eq(false)
		end
	end
	
end
