class ChangeDataTypeForTasks < ActiveRecord::Migration
  def change
    change_column :tasks, :due_date, :string
  end
end
