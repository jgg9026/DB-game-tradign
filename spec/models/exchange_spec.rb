require 'rails_helper'

RSpec.describe Exchange, type: :model do
  context "testing exchange model" do
  	it "it is ok" do
  		exchange=FactoryGirl.build(:exchange)
  		expect(exchange.save).to eq(true)
  	end	

  	it "it doesn't have user1_id" do
  		exchange=FactoryGirl.build(:no_user1_id)
  		expect(exchange.save).to eq(false)
  	end
  	it "it doesn't have user2_id" do
  		exchange=FactoryGirl.build(:no_user2_id)
  		expect(exchange.save).to eq(false)
  	end
  	it "it doesn't have request status" do
  		exchange=FactoryGirl.build(:no_request_state)
  		expect(exchange.save).to eq(false)
  	end
  	it{should have_many :comments}
  	it{should have_many :user_games}
  	it{should have_many :exchange_records}
  	it{should have_one :rate}

  end
 
end
