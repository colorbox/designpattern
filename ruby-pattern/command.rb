class Target
  attr_accessor :value
  def initialize(value)
    @value = value
  end
end

class Command
  def execute
  end
end

class PlusCommnad < Command
  attr_accessor :target, :value
  def initialize(target,value)
    @target = target
    @value = value
  end
  def execute
    @target.value = @target.value + @value
  end
end

class Multicommand < Command
  def initialize(target,value)
    @target = target
    @value = value
  end
  attr_accessor :target, :value
  def execute
    @target.value = @target.value * @value
  end
end

class CompositeCommand < Command
  attr_accessor :commands
  def initialize(commands)
    @commands = commands
  end
  def add_command
    @commands.push(command)
  end
  def execute
    @commands.each do |command|
      command.execute
    end
  end

end

t = Target.new(10)
cc = CompositeCommand.new([PlusCommnad.new(t,1),Multicommand.new(t,2)])
print(t.value)
print"\n"
cc.execute
print(t.value)
print"\n"

