require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {FactoryGirl.build(:user)}
  context 'testing User model' do
  	it 'User is ok' do
  		expect(user.save).to eq(true)
  	end
  	it 'user has no name' do
      user.name=nil
  		expect(user.save).to eq(false)
  	end
  	it 'user has no lastname' do
  		user.lastname=nil
  		expect(user.save).to eq(false)
  	end
  	it 'user has no email' do
  		user.email=nil
  		expect(user.save).to eq(false)
  	end
  	it 'user has no password' do
  		user.password=nil
  		expect(user.save).to eq(false)
  	end

  	it 'user has an invalid email' do
  		user.email="blabla"
  		expect(user.save).to eq(false)	
  	end

  	it 'user is unique' do
  		user=FactoryGirl.create(:user)
  		user2=FactoryGirl.build(:user)
  		expect(user2.save).to eq(false)
  	end
  	it{should have_many (:games)}
    it{should have_many (:user_games)}
    it "prueba de union" do
      user=FactoryGirl.build(:halo_has_user)
      expect(user.save).to eq(true)
      #puts(user.name)
    end

  end

end
