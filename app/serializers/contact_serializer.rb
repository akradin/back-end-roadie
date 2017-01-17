class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number, :email, :company, :details
end
