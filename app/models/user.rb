class User < ApplicationRecord
  has_many :tiers, through: :pledges
  has_many :pledges
  has_secure_password
  validates :email, presence: true, uniqueness: true
end
