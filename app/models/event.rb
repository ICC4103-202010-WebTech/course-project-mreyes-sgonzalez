class Event < ApplicationRecord
  belongs_to :user
  has_many :date_options
  has_one :resource
  has_many :comments
  has_one :event_list_organization
  has_many :event_list_users

  #belongs_to :organization, through: :event_list_organization
  #belongs_to :user, through: :event_list_user
  #has_one :user, through: :user
  #has_many :users ,through: :participation
  #has_many :comment_reply, through: :comments
end
