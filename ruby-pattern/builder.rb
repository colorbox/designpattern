class Director

  def initialize
  end

  def construct(builder)
    str = "hogehoge"
    str = builder.pre_operation(str)
    str = builder.operation(str)
    str = builder.post_operation(str)
    return str
  end

end

class LineBuilder
  def initialize
  end

  def pre_operation(str)
    "---" + str
  end

  def operation(str)
    "---" + str + "---"
  end

  def post_operation(str)
    str + "---"

  end

end

class BraceBuilder
  def initialize
  end

  def pre_operation(str)
    "{" + str

  end

  def operation(str)
    "(" + str + ")"
  end

  def post_operation(str)
    str + "}"
  end

end

b_builder = BraceBuilder.new
l_builder = LineBuilder.new

print Director.new.construct(b_builder)
print "\n"
print Director.new.construct(l_builder)
