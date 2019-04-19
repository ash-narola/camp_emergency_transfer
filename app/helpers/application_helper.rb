module ApplicationHelper
  def to_sentence(object, column)
    object.map{ |d| d.send(column.to_sym) }.join(', ')
  end
end
