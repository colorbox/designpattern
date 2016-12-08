class Entry
  def initialize(name)
    @name = name
  end
  def add
  end
  def prints
    @name
  end
end

class CompositeFile < Entry
  def accept(visitor)
    visitor.visit(self)
  end
end

class Directory < Entry
  def initialize(name)
    super(name)
    @entries = []
  end
  def add(entry)
    @entries.push(entry)
  end

  def prints
    @name
  end

  def members
    @entries
  end

  def accept(visitor)
    visitor.visit(self)
  end

end

class Visitor
  def initialize
  end
  def visit(entry)
    if entry.class.to_s =="Directory"
      visit_directory(entry)
    else
      visit_file(entry)
    end
  end
end

class UpcaseVisitor < Visitor
  def visit_file(entry)
    print entry.prints.upcase + "\n"
  end
  def visit_directory(entry)
    print entry.prints.upcase + "\n"
    entry.members.each do |member|
      member.accept self
    end
  end
end

class DowncaseVisitor < Visitor
  def visit_file(entry)
    print entry.prints.downcase + "\n"
  end
  def visit_directory(entry)
    print entry.prints.downcase + "\n"
    entry.members.each do |member|
      member.accept self
    end
  end
end

dir1 = Directory.new("dir1")
dir1.add(CompositeFile.new("a1"))
dir1.add(CompositeFile.new("b2"))
dir1.add(CompositeFile.new("C3"))

up_visitor = UpcaseVisitor.new
dir1.accept up_visitor

down_visitor = DowncaseVisitor.new
dir1.accept down_visitor