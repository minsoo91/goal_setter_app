class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :statement, null: false
      t.integer :user_id, null: false
      t.boolean :private_goal, default: false
      t.boolean :completed, default: false

      t.timestamps
    end

    add_index :goals, :user_id
  end
end
