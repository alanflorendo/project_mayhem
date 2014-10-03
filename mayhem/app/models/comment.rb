class Comment < ActiveRecord::Base

	has_many :votes, as: :voteable
	belongs_to :hypo
	belongs_to :user

end
