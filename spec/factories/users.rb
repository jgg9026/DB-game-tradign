FactoryGirl.define do
  factory :user do
    name 'Jonathan'
	lastname 'Garcia'
	email 'jgg.9026@gmail.com'
	password 'hdsjahdjashdjkas'
	nickname 'Zsieg'

	factory :no_name do
		name ''
	end

	factory :no_lastname do
		lastname ''
	end

	factory :no_email do
		email ''
	end

	factory :no_password do
		password ''
	end

	factory :invalid_email do
		email 'soy_el_mono_y_estoy_demoda'
	end

	

  end
end
