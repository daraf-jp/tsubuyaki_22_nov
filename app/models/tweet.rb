class Tweet < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :content, precence: true, length: { in: 1..140 }
end
