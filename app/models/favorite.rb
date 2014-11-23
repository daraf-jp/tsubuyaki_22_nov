class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :tweet

  validates :user, presence: true
  validates :user_id, uniqueness: { scope: :tweet_id }
  validates :tweet, presence: true
end
