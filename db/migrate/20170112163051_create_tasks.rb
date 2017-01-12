class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.date :due_date
      t.float :priority
      t.string :details
      t.boolean :completed

      t.timestamps null: false
    end
  end
end
