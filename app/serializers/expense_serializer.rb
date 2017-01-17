class ExpenseSerializer < ActiveModel::Serializer
  attributes :id, :name, :cost, :details
end
