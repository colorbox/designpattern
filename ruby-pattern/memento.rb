class Memento
  attr_accessor :money
  def initialize(money)
    @money = money
  end
end

class Gamer
  attr_accessor :money
  def initialize
    @money = 0
  end
  def save
    return Memento.new(money)
  end
  def load(memento)
    @money = memento.money
  end
end

g = Gamer.new
print(g.money)
print("\n")
g.money = 200
m = g.save
print(g.money)
print("\n")
g.money = 19
print(g.money)
print("\n")
g.load(m)
print(g.money)
print("\n")
