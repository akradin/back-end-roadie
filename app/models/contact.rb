class Contact < ActiveRecord::Base
  belongs_to :band
  # validates :name, presence: true
  # validates :phone_number, presence: false,
  #                          numericality: { only_integer: true },
  #                          length: { is: 10 }
end
