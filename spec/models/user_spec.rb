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
  		user.save
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
    it "prueba de union " do
      user.email="jojojo@jojojo.com"
      user.save
      game=FactoryGirl.build(:game)
      game.name="halo2"
      game.save
      t=game.user_games.new(user: user, condition: 10)
      expect(t.save).to eq(true)
      puts(user.name)
      puts(game.name)
      puts(t)

      #puts(User.last.user_games.game_id)
      # user.email="jojojo@jojojo.com"
      # user.save
      # game=FactoryGirl.create(:game)
      # game.name="halo2"
      # game.save
      # t=game.user_games.create(:user => user, :condition => 10)
      # user2=FactoryGirl.create(:user, :email => "jajajaj@gjaja.com")
    end

  end

end
