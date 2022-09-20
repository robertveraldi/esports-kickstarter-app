class Tier < ApplicationRecord
  has_many :users, through: :pledges
  has_many :pledges
  belongs_to :project
end
