class NumberGenerator

  attr_accessor :observer, :number
  def initialize(observer)
    @observer = observer
    @number = 0
  end
  def update
    observer.notify(self)
  end
  def execute
    @number = Random.new.rand(20)
    update
  end
end

class NumberObserver
  def notify(generator)
    print(generator.number)
  end
end

o = NumberObserver.new
g = NumberGenerator.new(o)

(1..100).to_a.each do
  g.execute
  print(",")
end
