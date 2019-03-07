class AddBenchmarkToGoal < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :benchmark, :float, null: false
  end
end
