require 'rails_helper'

RSpec.describe Comment, type: :model do
  context "testing comment model" do
  	it "Comment row is ok" do
	  	comment=FactoryGirl.build(:comment)
	  	expect(comment.save).to eq(true)
    end
    it "doesn't have content" do
    	comment=FactoryGirl.build(:no_content)
	  	expect(comment.save).to eq(false)
    end
    it "doesn't have user_id" do
    	comment=FactoryGirl.build(:no_user_id)
	  	expect(comment.save).to eq(false)
    end
    it "doesn't have excahge_id" do
    	comment=FactoryGirl.build(:no_exchange_id)
	  	expect(comment.save).to eq(false)
    end
    it{should belong_to :exchange}
  end
end
