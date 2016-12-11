class RealObject
  attr_accessor :secret_info
  def initialize(secret_info)
    @secret_info = secret_info
  end
end

class Proxy
  attr_accessor :real_object
  def initialize(real_object)
    @real_object = real_object
  end
  def secret_info
    print "warning use secret_infoz\n"
    return @real_object.secret_info
  end
end



p = Proxy.new(RealObject.new("secret"))

print p.secret_info
