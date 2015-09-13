require 'rails_helper'

RSpec.describe Categorization, type: :model do
	let(:categorization) {FactoryGirl.build(:categorization)}
	context "Testing join table categorizations" do
		it "is ok" do
			expect(categorization.save).to eq(true)
		end
		it "doesn't have category_id" do
			categorization.category_id=nil
			expect(categorization.save).to eq(false)
		end
		it { should have_db_index(:category_id) }
  		it { should have_db_index(:game_id) }
  		it{should belong_to :category}
  		it{should belong_to :game}
	end
end
