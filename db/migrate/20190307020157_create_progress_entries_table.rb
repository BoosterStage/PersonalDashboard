class CreateProgressEntriesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :progress_entries do |t|
      t.integer :goal_id
      t.integer :amount
      t.integer :entry_date
    end
  end
end
