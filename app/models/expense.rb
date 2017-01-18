class Expense < ActiveRecord::Base
  belongs_to :band
  # validates :name, presence: true
  # validates :cost, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }
  # validates :cost, numericality: { greater_than: 0 }
  # allows for a cost to be entered that is greatran than 0 and 2 decimal places
end
