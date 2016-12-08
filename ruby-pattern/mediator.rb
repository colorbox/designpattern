
class PartsManager
  attr_accessor :door, :switch
  def collegue_changed
    return if (@switch.on && @door.is_open)||(!@switch.on && !@door.is_open)
    if @switch.on
      @door.open
    else
      @door.close if @door.is_open
    end
  end
end

class Part
  attr_accessor :mediator
  def initialize(mediator)
    @mediator = mediator
  end
end

class Door < Part
  attr_accessor :is_open
  def initialize(mediator)
    super(mediator)
    @is_open = false
  end
  def open
    print "ドアが空いた\n"
    @is_open = true
    @mediator.collegue_changed
  end
end

class Switch < Part
  attr_accessor :on
  def initialize(mediator)
    super(mediator)
    @on = false
  end
  def push
    print "ボタンが押された\n"
    @on = true
    @mediator.collegue_changed
  end
end

pm = PartsManager.new

door = Door.new(pm)
switch = Switch.new(pm)

pm.door = door
pm.switch = switch

print pm.door
print pm.switch


switch.push
