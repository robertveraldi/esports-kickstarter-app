class User < ApplicationRecord
  has_many :projects
  has_many :tiers, through: :pledges
  has_many :pledges
end
