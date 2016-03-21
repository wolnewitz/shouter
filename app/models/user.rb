class User < ActiveRecord::Base
  has_many :shouts

  has_many :followed_relationships,
    foreign_key: :follower_id,
    class_name: FollowingRelationship
  has_many :followed_users, through: :followed_relationships

  has_many :follower_relationships,
    foreign_key: :followed_user_id,
    class_name: FollowingRelationship
  has_many :followers, through: :follower_relationships

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def following? user
    user.followers.include? self
  end
end
