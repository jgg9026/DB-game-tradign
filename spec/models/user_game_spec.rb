require 'rails_helper'

RSpec.describe UserGame, type: :model do
  let(:usergame) {FactoryGirl.build(:user_game)}
  context "testing join table betwen user and games" do
  	it {should belong_to (:user)}
  	it {should belong_to (:game)}
  	it {should validate_presence_of :condition}
  	it { should have_db_index(:user_id) }
  	it { should have_db_index(:game_id) }

  	it "user_game is ok"do
      #user=FactoryGirl.create(:user, name: 'joj1')
      #game=FactoryGirl.create(:game, name: 'joj2')
      #puts(User.all)
      #puts(user.name)
  		#usergame=FactoryGirl.build(:user_game, user: user, game: game)
      #puts(usergame.user_id)
      #puts(usergame.game_id)
      #puts(usergame.condition)
      #puts("------------")
  		expect(usergame.save).to eq(true) 
  	end
  	it "doesn't have a user id" do
  		usergame.user_id=nil
  		expect(usergame.save).to eq(false)
  	end
  	it "doesn't have a game id" do
  		usergame.game_id=nil
  		expect(usergame.save).to eq(false)
  	end
  	it "doesn't have condtition" do
  		usergame.condition=nil
  		expect(usergame.save).to eq(false)
  	end
  end
end

