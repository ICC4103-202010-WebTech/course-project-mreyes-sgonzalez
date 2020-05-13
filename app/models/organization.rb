class Organization < ApplicationRecord
  has_many :members
  has_many :event_list_organizations
  #has_many :users, through: member
  has_one :resource
end
