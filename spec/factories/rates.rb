FactoryGirl.define do
  factory :rate do
    rate 1
    exchange_id 1
 
  factory :no_exchange_id do
  	exchange_id nil
  end
 end
end
