class ChangeDataTypeForTasksPriority < ActiveRecord::Migration
  def change
    change_column :tasks, :priority, :integer
  end
end
