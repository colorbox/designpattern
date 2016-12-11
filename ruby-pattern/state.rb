
class State
  attr_accessor :count, :context
  def initialize(context)
    @count = 0
    @context = context
  end
end

class RunState < State
  def do_something
    print"running\n"
    @count = @count+1
    if @count > 3
      @context.change_state(StopState.new(@context))
    end
  end
end

class StopState < State
  def do_something
    print"stoping\n"
    @count = @count+1
    if @count > 3
      @context.change_state(RunState.new(@context))
    end

  end
end

class Person
  attr_accessor :state
  def initialize
  end
  def set_state(state)
    @state = state
  end
  def change_state(state)
    @state = state
  end
  def do_something
    @state.do_something
  end
end

p = Person.new
p.set_state(StopState.new(p))

(1..10).each do
  p.do_something
end
