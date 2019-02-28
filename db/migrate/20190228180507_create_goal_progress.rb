class CreateGoalProgress < ActiveRecord::Migration[5.2]
  def change
    create_table :goal_progresses do |t|
      t.references :goal, index: true
      t.integer :achieve, null: false
      t.date :achieve_at, null: false

      t.timestamps
    end
  end
end
