require 'rails_helper'

RSpec.describe ExchangeRecord, type: :model do
  context "testing join table exhange_records" do
  	it "it is ok" do
  		exchangerecord=FactoryGirl.build(:exchange_record)
  		expect(exchangerecord.save).to eq(true)
  	end

  end
end
