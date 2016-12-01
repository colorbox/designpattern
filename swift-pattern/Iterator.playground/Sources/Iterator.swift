public class Iterator {

    var index:Int = 0
    var array:[Any] = []

    public init(array:[Any]){
        self.array = array
    }

    public func hasNext() -> Bool {
        return (index < array.count)
    }

    public func next()->Any {
        let value:Any = array[index]
        index = index+1
        return value
    }

}

