class Hypo < ActiveRecord::Base
  validates :title, presence: true

  belongs_to :user
  has_many :comments
  has_many :votes, as: :voteable

end
