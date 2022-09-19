class CreateTiers < ActiveRecord::Migration[7.0]
  def change
    create_table :tiers do |t|
      t.integer :project_id
      t.text :description
      t.decimal :amount, precision: 9, scale: 2
      t.integer :limit
      t.date :delivery_date

      t.timestamps
    end
  end
end
