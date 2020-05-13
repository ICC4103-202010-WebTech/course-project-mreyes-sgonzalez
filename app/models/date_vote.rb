class DateVote < ApplicationRecord
  has_one :user
  belongs_to :date_option
end