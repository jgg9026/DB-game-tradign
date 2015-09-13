require 'rails_helper'

RSpec.describe Exchange, type: :model do
  let(:exchange) {FactoryGirl.build(:exchange)}
  context "testing exchange model" do
  	it "is ok" do
  		expect(exchange.save).to eq(true)
  	end	
  	it "doesn't have user1_id" do
      exchange.user1_id=nil
  		expect(exchange.save).to eq(false)
  	end
  	it "doesn't have user2_id" do
  		exchange.user2_id=nil
  		expect(exchange.save).to eq(false)
  	end
  	it "it doesn't have request status" do
  		exchange.request_state=nil
  		expect(exchange.save).to eq(false)
  	end
  	it{should have_many :comments}
  	it{should have_many :user_games}
  	it{should have_many :exchange_records}
  	it{should have_one :rate}

  end
 
end
