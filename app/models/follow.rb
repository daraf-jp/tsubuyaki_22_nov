class Follow < ActiveRecord::Base
  belongs_to :follower, class_name: User
  belongs_to :inverse_follower, class_name: User
end
