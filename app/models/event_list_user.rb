class EventListUser < ApplicationRecord
  has_many :users
  #belongs_to :user
  belongs_to :event
end
