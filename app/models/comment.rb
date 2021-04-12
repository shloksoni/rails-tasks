class Comment < ApplicationRecord

  validates :content, presence: true, length: { maximum: 120 }
  
  belongs_to :task
  belongs_to :user
end
