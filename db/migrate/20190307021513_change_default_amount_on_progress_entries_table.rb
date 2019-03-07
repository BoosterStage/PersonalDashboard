class ChangeDefaultAmountOnProgressEntriesTable < ActiveRecord::Migration[5.2]
  def change
    change_column :progress_entries, :amount, :integer, default: 0
  end
end
