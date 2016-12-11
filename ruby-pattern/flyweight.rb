class Flyweight
  attr_accessor :pool
  def initialize
    @pool = {}
  end
  def get_number(key)
    if @pool[key]
      print "use cache #{key}\n"
      return @pool[key]
    end
    print "created #{key}\n"
    @pool[key] = key
    return @pool[key]
  end
end

f = Flyweight.new

f.get_number(1)
f.get_number(1)
f.get_number(2)
f.get_number(2)
