class Rate < ActiveRecord::Base
	validates :rate, :exchange_id, presence: true
	belongs_to :exchange
end
