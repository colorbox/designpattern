class OutputImpleHoge
  def initialize
  end
  def output
    "hoge"
  end
end

class OutputImpleOptional
  @option = ""
  def initialize(str)
    @option = str
  end
  def output
    @option
  end
end

class Output

  attr_accessor :impl
  @impl = nil

  def initialize(impl)
    @impl = impl
  end

  def output
    @impl.output
  end

  def multiple
    [@impl.output,@impl.output,@impl.output]
  end

end

op = Output.new(OutputImpleHoge.new)
print op.output
print"\n"
print op.multiple
print"\n"

opo = Output.new(OutputImpleOptional.new("piyo"))
print opo.output
print"\n"
print opo.multiple
print"\n"
