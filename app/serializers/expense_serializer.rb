class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :details, :band_id
end
