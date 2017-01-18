class BandSerializer < ActiveModel::Serializer
  attributes :id, :name, :tasks, :expenses

  def tasks
    object.tasks.map(&:id)
  end

  def expenses
    object.expenses.map(&:id)
  end
end
