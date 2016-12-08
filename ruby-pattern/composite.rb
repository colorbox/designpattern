class Entry
  def initialize(name)
    @name = name
  end
  def add
  end
  def prints
    print @name + "\n"
  end
end

class CompositeFile < Entry
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
    super
    @entries.each do |entry|
      entry.prints
    end
  end

end

dir1 = Directory.new("dir1")
dir1.add(CompositeFile.new("1"))
dir1.add(CompositeFile.new("2"))
dir1.add(CompositeFile.new("3"))

dir1.prints
