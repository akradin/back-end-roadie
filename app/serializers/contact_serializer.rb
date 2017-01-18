class ContactSerializer < ActiveModel::Serializer
  attributes :id, :name, :phone_number, :email, :company, :details, :band_id
end
