class Task < ActiveRecord::Base
  belongs_to :band
  validates :name, presence: true
  validates :due_date, format: { with: /\d{4}\-\d{2}\-\d{2}/ }
  # validates :priority, length: { is: 1 }
end
