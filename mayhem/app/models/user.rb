class User < ActiveRecord::Base

  has_many :hypos
  has_many :comments, through: :hypos
  has_many :votes

  has_secure_password

end
