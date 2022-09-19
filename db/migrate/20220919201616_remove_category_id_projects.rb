class RemoveCategoryIdProjects < ActiveRecord::Migration[7.0]
  def change
    remove_column :projects, :category_id, :integer
  end
end
