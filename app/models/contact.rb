class Contact < ActiveRecord::Base
  belongs_to :band
  belongs_to :user
  validates :name, presence: true
  validates :phone_number, allow_blank: true,
                           numericality: { only_integer: true },
                           length: { is: 10 }
  # validates :email, presence: true
end
