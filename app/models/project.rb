class Project < ApplicationRecord
  has_many :categories, through: :project_categories
  has_many :project_categories
  has_many :tiers
  belongs_to :user

  def current_amount
    @current_amount = 0
    tiers.each do |tier|
      @current_amount += tier.amount * tier.pledges.length
    end
    return @current_amount
  end
end
