

class User < ApplicationRecord
  has_one :profile
  has_many :members
  has_many :event_list_users
  has_one :date_vote
  #has_many :date_votes
  has_many :events
  has_many :messages
  has_many :message_users
  has_many :comments
  has_many :comment_replies

  validates :username, presence: true
  validates :password, presence: true
  validates :email, presence: true, uniqueness: true
  validates :admin, presence: true


  #belongs_to :member
  #belongs_to :participation
  #has_and_belongs_to_many :organizations, through: :member
  #has_many :messages
  #has_and_belongs_to_many  :events, through: :participation
  #has_many :date_votes
end
