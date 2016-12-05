
class Product

  def initialize
  end

end

class ProductFactory

  def initialize
  end

  def create_product
    pre_create
    product = create
    post_create
    return product
  end

end

class ConcreteProductA < Product
end

class ConcreteProductAFactory < ProductFactory

  def pre_create
    print "pre A create\n"
  end

  def create
    print "A create\n"
    return ConcreteProductA.new
  end

  def post_create
    print "post A create\n"
  end
end

factory = ConcreteProductAFactory.new

factory.create_product
