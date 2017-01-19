class Contact < ActiveRecord::Base
  belongs_to :band
  validates :name, presence: true
  validates :phone_number, allow_blank: true,
                           numericality: { only_integer: true },
                           length: { is: 10 }
  # validates :email, presence: true
end
