class AddBandToTasks < ActiveRecord::Migration
  def change
    add_reference :tasks, :band, index: true, foreign_key: true
  end
end
