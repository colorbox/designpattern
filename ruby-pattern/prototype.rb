class Prototype

  attr_accessor :hoge

  @hoge = ""

  def initialize(str)
    @hoge = str
  end

end



pro = Prototype.new("hugahuga")
print pro.hoge
print pro

print("\n")
pro2 = pro.clone
print pro2.hoge
print pro2
