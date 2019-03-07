class AddBenchmarkToGoal < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :benchmark, :float
    # NOTE: SQLite won't allow null: false constraint in add column clause
    change_column :goals, :benchmark, :float, null: false
  end
end
