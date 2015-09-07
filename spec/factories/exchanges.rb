FactoryGirl.define do
  factory :exchange do
  		user1_id 1
  		user2_id 2
  		request_state "solicitado"

  		factory :no_user1_id do
  			user1_id nil
  		end
  		factory :no_user2_id do
  			user2_id nil
  		end
  		factory :no_request_state do
  			request_state ""
  		end

  end
end
