class User < ActiveRecord::Base
  include Following
  has_many :shouts, dependent: :destroy

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
