class ChangeMiscFields < ActiveRecord::Migration[5.2]
  def change
    rename_column :goals, :amount, :benchmark
    change_column :progress_entries, :entry_date, :date
  end
end
