class Contact < ActiveRecord::Base
  belongs_to :band
  validates :name, presence: true
  validates :phone_number, numericality: { only_integer: true }
  validates :phone_number, length: { is: 10 }
end
