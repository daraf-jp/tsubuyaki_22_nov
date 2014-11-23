class Follow < ActiveRecord::Base
  belongs_to :follower, class_name: User
  belongs_to :inverse_follower, class_name: User

  validates :follower, presence: true
  validates :inverse_follower, presence: true
  validates :inverse_follower_id, uniqueness: { scope: :follower_id }
end
