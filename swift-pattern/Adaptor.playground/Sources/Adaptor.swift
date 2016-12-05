
public protocol NewAdaptor {
    func newMethod() -> String
}

public class Adaptor:Adaptee, NewAdaptor {

    public override init(){}

    public func newMethod()-> String{
        return "<H1>" + super.oldMethod() + "</H1>"
    }

}


public class Adaptee {

    public func oldMethod()->String{
        return "hoge"
    }
}
