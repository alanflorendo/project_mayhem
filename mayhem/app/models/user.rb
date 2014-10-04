class User < ActiveRecord::Base
	validates :email, presence: true
  validates :username, presence: true
  validates :password, presence: true
  validates_uniqueness_of :username
  validates_uniqueness_of :email
  validates_confirmation_of :password, message: "Password doesn't match"

  has_many :hypos
  # has_many :votes, as: :voteable, through: :hypos
  has_many :comments, through: :hypos
  # has_many :votes, as: :voteable, through: :comments
  has_many :votes

  has_secure_password

  def already_voted_this?(context, context_type)
    puts "ALREADY VOTED THIS METHOD ENTERED"
    puts "CONTEXT: #{context}.  CONTEXT_TYPE: #{context_type}."
    puts "ALREADY VOTED THIS METHOD EXITED"
    if context_type == "Hypo"
      return self.votes.where(voteable_type: context_type, voteable_id: context.id).first != nil
    else
      return self.votes.where(voteable_type: context_type, voteable_id: context.id).first != nil
    end
  end

end
