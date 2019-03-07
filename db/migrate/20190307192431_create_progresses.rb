class CreateProgresses < ActiveRecord::Migration[5.2]
  def change
    create_table :progresses do |t|
      t.references :goal, foreign_key: true
      t.float :points
      t.date :entry_date, null: false

      t.timestamps
    end
  end
end
