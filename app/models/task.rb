class Task < ActiveRecord::Base
  belongs_to :band
  validates :name, presence: true
  validates :due_date, presence: true
  # validates :priority, length: { is: 1 }
  validates :band_id, presence: true
end
