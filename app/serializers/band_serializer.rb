class BandSerializer < ActiveModel::Serializer
  attributes :id, :name, :tasks, :expenses, :contacts

  def tasks
    object.tasks.map(&:id)
  end

  def expenses
    object.expenses.map(&:id)
  end

  def contacts
    object.contacts.map(&:id)
  end
end
