class Project < ApplicationRecord
  has_many :categories, through: :project_categories
  has_many :project_categories
  belongs_to :user
end
