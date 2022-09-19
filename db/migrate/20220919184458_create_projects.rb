class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :category_id
      t.string :title
      t.text :description
      t.decimal :goal_amount, precision: 9, scale: 2
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
