require 'rails_helper'

RSpec.describe ExchangeRecord, type: :model do
  let(:exchangerecord) {FactoryGirl.build(:exchange_record)}
  context "testing join table exhange_records" do
  	it "is ok" do
  		expect(exchangerecord.save).to eq(true)
  	end
  	it "doesn't have exchange_game_id" do
  		exchangerecord.exchange_id=nil
  		expect(exchangerecord.save).to eq(false)
  	end

  	it "doesn't have user_game_id" do
  		exchangerecord.user_game_id=nil
  		expect(exchangerecord.save).to eq(false)
  	end

  	it "doesn't have user_id" do
  		exchangerecord.user_id=nil
  		expect(exchangerecord.save).to eq(false)
  	end

  	it{should belong_to :user_game}
    #it{should belong_to :user}
  	it{should belong_to :exchange}
  	it { should have_db_index(:user_game_id) }
  	it { should have_db_index(:exchange_id) }

  end
end
