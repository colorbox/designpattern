class DinnaerFactory
  def initialize
  end

  def createDinner
    return [createAppetizer,createMain]
  end

  def createMain
  end

  def createAppetizer
  end
end

class Soup
  def initialize
  end
end

class Rice
  def initialize
  end
end

class Salad
  def initialize
  end
end

class Pizza
  def initialize
  end
end

class JapaneseFactory < DinnaerFactory
  def createMain
    Rice.new
  end

  def createAppetizer
    Soup.new
  end
end

class ItalyFactory < DinnaerFactory
  def createMain
    Pizza.new
  end

  def createAppetizer
    Salad.new
  end
end

japanese_f = JapaneseFactory.new
print japanese_f.createDinner
print "\n"

italy_f = ItalyFactory.new
print italy_f.createDinner

