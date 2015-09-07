FactoryGirl.define do
  factory :platform do
    platform "Xbox"
	console "Xbox one"

	factory :no_platform do
		platform ""
	end
	factory :no_console do
		console ""
	end

  end

end
