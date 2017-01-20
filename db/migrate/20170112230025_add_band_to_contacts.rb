class AddBandToContacts < ActiveRecord::Migration
  def change
    add_reference :contacts, :band, index: true, foreign_key: true, null: true
  end
end
