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

  	it{should belong_to :user_game}
  	it{should belong_to :exchange}
  	it { should have_db_index(:user_game_id) }
  	it { should have_db_index(:exchange_id) }

  end
end
