class Problem
  attr_accessor :difficulty
  def initialize(difficulty)
    @difficulty = difficulty
  end
end

class Resolver
  attr_accessor :next
  def initialize
    @next = nil
  end
end

class OddResolver < Resolver
  def resolve(problem)
    if problem.difficulty%2==1
      print("resolved by odd\n")
      true
    else
      print("odd cannot resolve\n")
      return false unless @next
      @next.resolve(problem)
    end
  end
end

class WeakResolver < Resolver
  def resolve(problem)
    if problem.difficulty < 10
      print("resolved by weak\n")
      true
    else
      print("weak cannot resolve\n")
      return false unless @next
      @next.resolve(problem)
    end
  end
end

class StrongResolver < Resolver
  def resolve(problem)
    if problem.difficulty < 100
      print("resolved by strong\n")
      true
    else
      print("strong cannot resolve\n")
      return false unless @next
      @next.resolve(problem)
    end
  end
end


odd_r = OddResolver.new
wr = WeakResolver.new
sr = StrongResolver.new

odd_r.next = wr
wr.next = sr

pro1 = Problem.new(11)
odd_r.resolve(pro1)
print"---\n"
pro2 = Problem.new(8)
odd_r.resolve(pro2)
print"---\n"
pro3 = Problem.new(100)
odd_r.resolve(pro3)
print"---\n"
