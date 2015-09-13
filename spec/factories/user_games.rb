FactoryGirl.define do
  factory :user_game do
  game_id 1
  user_id 1
  condition 10
	factory :user_has_game, class: 'user_games' do
		#game.association(:game, name:'Halo')
		association :game, factory: :game, name: "Whalo"
	end
	factory :halo_has_user, parent: :user do
		after(:create) {|user| create(:user_has_game, game: user)}
	end
  end
end
