class FormatDecimalProject < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :current_amount, :decimal
  end
end
