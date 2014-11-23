class Tweet < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :content, presence: true, length: { in: 1..140 }

  default_scope -> { order(created_at: :desc) }
end
