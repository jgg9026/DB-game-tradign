class Comment < ActiveRecord::Base
	validates :content, :user_id, presence: true
	belongs_to :exchange
end
