class AddBenchmarkToGoals < ActiveRecord::Migration[5.2]
  def change
    add_column :goals, :benchmark, :integer, required: true
  end
end
