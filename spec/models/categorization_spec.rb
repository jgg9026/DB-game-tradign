require 'rails_helper'

RSpec.describe Categorization, type: :model do
	context "Testing join table categorizations" do
		it "it is ok" do
			categorization=FactoryGirl.build(:categorization)
			expect(categorization.save).to eq(true)
		end
		it ", it doesn't have category_id" do
			categorization=FactoryGirl.build(:no_category_id)
			expect(categorization.save).to eq(false)
		end
		it { should have_db_index(:category_id) }
  		it { should have_db_index(:game_id) }
  		it{should belong_to :category}
  		it{should belong_to :game}
	end
end
