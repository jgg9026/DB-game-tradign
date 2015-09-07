FactoryGirl.define do
  factory :game_platform do
    game_id  1
	platform_id 1
  
  	factory :no_platform_id do
  		platform_id nil
  	end
	end

end
