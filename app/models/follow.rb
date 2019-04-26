class Follow < ApplicationRecord
  belongs_to :follower, class_name: 'User', foreign_key: 'follower_id',
                        counter_cache: :followings_count,
                        inverse_of: :following_relationships
  belongs_to :following, class_name: 'User', foreign_key: 'following_id',
                         counter_cache: :followers_count,
                         inverse_of: :follower_relationships
end
