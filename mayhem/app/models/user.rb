class User < ActiveRecord::Base
	validates :email, presence: true
  validates :username, presence: true
  validates :password, presence: true
  validates_uniqueness_of :username
  validates_uniqueness_of :email
  

  has_many :hypos
  has_many :votes, as: :voteable, through: :hypos
  has_many :comments, through: :hypos
  has_many :votes, as: :voteable, through: :comments

  has_secure_password

end
