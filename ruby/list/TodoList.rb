class TodoList

  def initialize(list)
    @list = list
  end

  def store_items
    @list
  end

  def add_item(list_item)
    return @list.push(list_item)
  end

  def delete_items(list_item)
    answer = []
    answer.push(@list.delete(list_item))
    return answer
  end

  def retrieves_item(index)
    return @list.fetch(index)
  end

end