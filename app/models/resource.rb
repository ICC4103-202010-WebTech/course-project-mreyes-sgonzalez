class Resource < ApplicationRecord
  has_one :event
  has_one :organization
  #belongs_to :event
  #belongs_to :organization
end
