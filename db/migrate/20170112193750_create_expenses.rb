class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.string :name
      t.float :cost
      t.string :details

      t.timestamps null: false
    end
  end
end
