FactoryGirl.define do
  factory :categorization do
    category_id 1
	game_id 1
	factory :no_category_id do
		category_id nil
	end
  end

end
