
class Adaptee
  def initialize
  end

  def hoge
    "hoge"
  end

end

class Adaptor
  def initialize
    @adaptee = Adaptee.new()
  end

  def hoge
    "<H1>" + @adaptee.hoge + "</H1>"
  end


end


