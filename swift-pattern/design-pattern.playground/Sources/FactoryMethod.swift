public class Product{
    var id:String = ""
    init(id:String) {
        self.id = id
    }
    public func productId()->String{
        return id
    }
}

public class BaseFactory{

    public init() {}
    public func preCreate(){}
    public func create()->Product{return Product.init(id: "")}
    public func postCreate(){}

    public func createProduct()->Product{
        preCreate()
        let product:Product = create()
        postCreate()
        return product
    }
}

public class ConcreteFactoryA:BaseFactory{
    public override init() {}
    public override func preCreate() {
        print("something before create in A")
    }
    public override func create() -> Product {
        print("something creating in A")
        return Product.init(id: "from A Factory")
    }
    public override func postCreate() {
        print("something after create in A")
    }
}

public class ConcreteFactoryB:BaseFactory{
    public override init() {}
    public override func preCreate() {
        print("something before create in B")
    }
    public override func create() -> Product {
        print("something creating in B")
        return Product.init(id: "from B Factory")
    }
    public override func postCreate() {
        print("something after create in B")
    }
}




