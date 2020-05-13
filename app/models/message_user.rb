class MessageUser < ApplicationRecord
  belongs_to :user
  has_one :message
end
