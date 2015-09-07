require 'rails_helper'

RSpec.describe User, type: :model do
  context 'testing User model' do
  	it 'User is ok' do
  		user=FactoryGirl.build(:user)
  		expect(user.save).to eq(true)
  	end
  	it 'user has no name' do
  		user=FactoryGirl.build(:no_name)
  		expect(user.save).to eq(false)
  	end
  	it 'user has no lastname' do
  		user=FactoryGirl.build(:no_lastname)
  		expect(user.save).to eq(false)
  	end
  	it 'user has no email' do
  		user=FactoryGirl.build(:no_email)
  		expect(user.save).to eq(false)
  	end
  	it 'user has no password' do
  		user=FactoryGirl.build(:no_password)
  		expect(user.save).to eq(false)
  	end

  	it 'user has an invalid email' do
  		user=FactoryGirl.build(:invalid_email)
  		expect(user.save).to eq(false)	
  	end

  	it 'user is unique' do
  		user=FactoryGirl.create(:user)
  		user2=FactoryGirl.build(:user)
  		expect(user2.save).to eq(false)
  	end
  	it{should have_many (:games)}
    it{should have_many (:user_games)}

  end

end
