class AddUserToBands < ActiveRecord::Migration
  def change
    add_reference :bands, :user, index: true, foreign_key: true
  end
end
