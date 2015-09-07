class Comment < ActiveRecord::Base
	validates :content, :user_id, :exchange_id, presence: true
	belongs_to :exchange
end
