class Comment < ApplicationRecord
  belongs_to :micropost
  validates :title, presence: true
  validates :content, presence: true
end
