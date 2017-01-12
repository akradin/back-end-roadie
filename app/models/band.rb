class Band < ActiveRecord::Base
  belongs_to :user
  has_many :tasks
  has_many :expenses
  has_many :contacts
end
