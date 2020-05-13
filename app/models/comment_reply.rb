class CommentReply < ApplicationRecord
  belongs_to :user
  belongs_to :comment
  #has_one :user
  #has_one :comment
end
