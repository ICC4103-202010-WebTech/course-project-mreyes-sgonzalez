class EventListOrganization < ApplicationRecord
  has_many :events
  has_many :organizations
  #belongs_to :organization
  #belongs_to :organization
end
