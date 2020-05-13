class DateOption < ApplicationRecord
  belongs_to :event
  has_many :date_votes
end
