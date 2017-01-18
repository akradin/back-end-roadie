class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :due_date, :priority, :details, :band_id
end
