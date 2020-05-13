class EventListOrganization < ApplicationRecord
  has_many :events
  #belongs_to :organization
  belongs_to :organization
end
