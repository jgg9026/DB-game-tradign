FactoryGirl.define do
  factory :user_game do
  game_id 1
  user_id 1
  condition "good"

	factory :no_user_id do
		user_id nil
	end
	factory :no_game_id do
		game_id nil
	end
	factory :no_game_condition do
		condition ""
	end
  end
end
