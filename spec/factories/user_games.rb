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


	factory :user_has_game, class: 'user_games' do
		#game.association(:game, name:'Halo')
		association :game, factory: :game, name: "Whalo"
	end
	factory :halo_has_user, parent: :user do
		after(:create) {|user| create(:user_has_game, game: user)}

	end
  end
end
