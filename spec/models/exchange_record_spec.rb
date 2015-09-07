require 'rails_helper'

RSpec.describe ExchangeRecord, type: :model do
  context "testing join table exhange_records" do
  	it "it is ok" do
  		exchangerecord=FactoryGirl.build(:exchange_record)
  		expect(exchangerecord.save).to eq(true)
  	end
  	it "doesn't have exchange_game_id" do
  		exchangerecord=FactoryGirl.build(:no_exchange_id)
  		expect(exchangerecord.save).to eq(false)

  	end

  	it "doesn't have user_game_id" do
  		exchangerecord=FactoryGirl.build(:no_user_game_id)
  		expect(exchangerecord.save).to eq(false)
  	end

  	it "doesn't have user_id" do
  		exchangerecord=FactoryGirl.build(:no_user_id)
  		expect(exchangerecord.save).to eq(false)
  	end

  end
end
