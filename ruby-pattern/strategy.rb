class Enemy

  attr_accessor :move_pattern, :x, :y

  def initialize(move_pattern)
    @move_pattern = move_pattern
    @x = 0
    @y = 0
  end

  def move
    @move_pattern.run(self)
  end

end

class SideStraghtPattern
  def initialize
  end

  def run(enemy)
    enemy.x = enemy.x+1
  end
end

class StraightPattern
  def initialize
  end

  def run(enemy)
    enemy.y = enemy.y+1
  end
end

enemy = Enemy.new(StraightPattern.new)
print enemy.x.to_s + "," + enemy.y.to_s + "\n"
enemy.move
print enemy.x.to_s + "," + enemy.y.to_s + "\n"
enemy.move
print enemy.x.to_s + "," + enemy.y.to_s + "\n"

enemy = Enemy.new(SideStraghtPattern.new)
print enemy.x.to_s + "," + enemy.y.to_s + "\n"
enemy.move
print enemy.x.to_s + "," + enemy.y.to_s + "\n"
enemy.move
print enemy.x.to_s + "," + enemy.y.to_s + "\n"
