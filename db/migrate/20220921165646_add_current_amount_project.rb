class AddCurrentAmountProject < ActiveRecord::Migration[7.0]
  def change
    add_column :projects, :current_amount, :decimal, precision: 9, scale: 2
  end
end
