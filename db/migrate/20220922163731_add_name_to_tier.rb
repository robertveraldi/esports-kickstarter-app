class AddNameToTier < ActiveRecord::Migration[7.0]
  def change
    add_column :tiers, :name, :string
  end
end
