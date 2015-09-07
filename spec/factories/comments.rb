FactoryGirl.define do
  factory :comment do
    content "blablblabla"
	exchange_id 1
	user_id 1

	factory :no_content do
		content ""
	end
  end
end
	