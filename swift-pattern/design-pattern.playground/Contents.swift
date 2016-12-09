// Factory method
let cfa:ConcreteFactoryA = ConcreteFactoryA.init()
print(cfa.createProduct().productId())
let cfb:ConcreteFactoryB = ConcreteFactoryB.init()
print(cfb.createProduct().productId())

// Singleton
print("\(Unmanaged.passUnretained(Singleton.sharedSingleton).toOpaque())")
print("\(Unmanaged.passUnretained(Singleton.sharedSingleton).toOpaque())")
print("\(Unmanaged.passUnretained(Singleton.sharedSingleton).toOpaque())")

