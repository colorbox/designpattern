
class Singleton

  @@singleton = self.new

  def self.get_singleton
    return @@singleton
  end

  private
  def initialize
  end

end

print(Singleton.get_singleton)
print("\n")
print(Singleton.get_singleton)
print("\n")
print(Singleton.get_singleton)
print("\n")
