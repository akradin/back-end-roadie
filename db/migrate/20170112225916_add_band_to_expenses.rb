class AddBandToExpenses < ActiveRecord::Migration
  def change
    add_reference :expenses, :band, index: true, foreign_key: true, null: true
  end
end
