class Micropost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  VALID_CONTENT_REGEX = /\A(https\:\/\/docs\.google\.com\/forms\/d\/e\/)+([\w+\-.]{56})+(\/viewform)+([\w+\-.?=]{1,20}*)\z/
  validates :content, presence: true, length: { in: 90..140 },
  format: { with: VALID_CONTENT_REGEX }
end
 
 