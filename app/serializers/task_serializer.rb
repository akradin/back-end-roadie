class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :due_date, :priority, :details
end
