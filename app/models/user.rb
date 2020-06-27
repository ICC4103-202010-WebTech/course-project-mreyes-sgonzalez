class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #validates_acceptance_of :tos_agreement, :allow_nil => false, :accept => true, :on => :create
  #validates_acceptance_of :aup_agreement, :allow_nil => false, :accept => true, :on => :create
  has_one :profile
  accepts_nested_attributes_for :profile
  has_many :members
  has_many :event_list_users
  has_one :date_vote
  #has_many :date_votes
  has_many :events
  has_many :messages
  has_many :message_users
  has_many :comments
  has_many :comment_replies


  def with_profile
    build_profile if profile.nil?
    self
  end

  #belongs_to :member
  #belongs_to :participation
  #has_and_belongs_to_many :organizations, through: :member
  #has_many :messages
  #has_and_belongs_to_many  :events, through: :participation
  #has_many :date_votes
end