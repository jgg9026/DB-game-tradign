FactoryGirl.define do
  factory :exchange_record do
    user_game_id 1
	exchange_id 1
	user_id 1

	factory :no_user_game_id do
		user_game_id nil
	end
  end
end