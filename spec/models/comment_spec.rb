require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) {FactoryGirl.build(:comment)}
  context "testing comment model" do
  	it "is ok" do
	  	expect(comment.save).to eq(true)
    end
    it "doesn't have content" do
    	comment.content=nil
	  	expect(comment.save).to eq(false)
    end
    it "doesn't have user_id" do
    	comment.user_id=nil
	  	expect(comment.save).to eq(false)
    end
    it "doesn't have excahge_id" do
    	comment.exchange_id=nil
	  	expect(comment.save).to eq(false)
    end
    it{should belong_to :exchange}
  end
end
