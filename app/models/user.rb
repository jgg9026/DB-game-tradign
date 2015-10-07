require 'digest'
class User < ActiveRecord::Base
  validates :name, :lastname, :email, :password_digest, presence: true
	validates :email, :nickname, uniqueness: true
	validates_length_of :password_digest, minimum: 8
  has_secure_password
	has_many :games, through: :user_games, dependent: :destroy
	has_many :user_games, dependent: :destroy
  has_many :user1 , class_name: "Exchange", foreign_key: "user1_id"
  has_many :user2 , class_name: "Exchange", foreign_key: "user2_id"
  has_many :record , class_name: "ExchangeRecord", foreign_key: "user_id"
	validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  before_create :set_token
  before_create :set_nickname
  def set_nickname
    if(self.nickname)
    else
      self.nickname=self.email
    end
  end
  def is_password?(password)
    BCrypt::Password.new(self.password_digest) == password
  end
  def self.login(email, password)
    user=User.where(email: email).first
    if user
      if(BCrypt::Password.new(user.password_digest) == password)
        #user.token
        user
      else
        #puts('que haces')
        false
      end 
    else
      #puts("User doesn't exist")
      false
    end
  end
  def self.generate_new_token(id)
    user=User.find(id)
    if user
      user.token=SecureRandom.uuid
      user.save
    else
      false
    end
  end
  def self.validate_token(token)
    user = User.where(token: token).first
    user ? user : nil
  end
  private
  def set_token
    self.token = SecureRandom.uuid#Digest::SHA1.hexdigest Time.now.to_s
  end
end
