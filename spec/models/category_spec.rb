require 'rails_helper'

RSpec.describe Category, type: :model do
	context "testing category model" do
		it "has a name" do
			category=FactoryGirl.build(:category)
			expect(category.save).to eq(true)
		end	
		it "has a unique name" do
			category1=FactoryGirl.create(:category)
			category2=FactoryGirl.build(:category)
			expect(category2.save).to eq(false)
		end
		it {should validate_presence_of :name}
	end
end
