class Category < ApplicationRecord
  has_many :projects, through: :project_categories
  has_many :project_categories
end
