class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :bands
  has_many :contacts, through: :bands
  has_many :tasks, through: :bands
  has_many :expenses, through: :bands
end
