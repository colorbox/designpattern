class BaseOutputer

  def initialize(str)
    @str = str
  end

  def run
    return @str
  end

end

class Decorator < BaseOutputer
  def initialize(outputer)
    @outputer = outputer
  end

end
class LineDecorator < Decorator
  def run
    return "|" + @outputer.run + "|"
  end
end

class CurlyBraceDecorator < Decorator
  def run
    return "{" + @outputer.run + "}"
  end
end

ld = LineDecorator.new(BaseOutputer.new("hoge"))
print ld.run + "\n"
cd = CurlyBraceDecorator.new(ld)
print cd.run
