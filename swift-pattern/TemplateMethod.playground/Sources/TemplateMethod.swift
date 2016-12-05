
public class TemplateMethod{

    public init() {}
    
    public func hoge(){
        hoge1()
        hoge2()
        hoge3()
    }
    public func hoge1(){}
    public func hoge2(){}
    public func hoge3(){}

}

public class TemplateMethodSub1:TemplateMethod{
    public override func hoge1() {
        print("hoge1")
    }

    public override func hoge2() {
        print("hoge2")
    }

    public override func hoge3() {
        print("hoge3")
    }

}


public class TemplateMethodSub2:TemplateMethod{
    public override func hoge1() {
        print("*hoge1")
    }

    public override func hoge2() {
        print("*hoge2")
    }

    public override func hoge3() {
        print("*hoge3")
    }
    
}

