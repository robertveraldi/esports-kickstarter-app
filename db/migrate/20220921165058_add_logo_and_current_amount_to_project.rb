class AddLogoAndCurrentAmountToProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :logo, :text
    add_column :projects, :current_amount, :decimal
  end
end
