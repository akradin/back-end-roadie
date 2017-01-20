class AddBandToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :band, index: true, foreign_key: true, null: true
  end
end
