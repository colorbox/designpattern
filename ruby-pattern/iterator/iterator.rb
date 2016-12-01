
class Iterator

  def initialize(array)
    @array = array
    @index = 0
  end

  def has_next
    # compare with index
    return (@index + 1) <= @array.count
  end

  def next
    value = @array[@index]
    @index = @index + 1
    value
  end

end
