class CreatePledges < ActiveRecord::Migration[7.0]
  def change
    create_table :pledges do |t|
      t.integer :user_id
      t.integer :tier_id

      t.timestamps
    end
  end
end
