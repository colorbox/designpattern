
class TemplateMethod

  def initialize

  end

  def hoge
    hoge1
    print("\n")
    hoge2
    print("\n")
    hoge3
    print("\n")
  end

  def hoge1
  end

  def hoge2
  end

  def hoge3
  end

end

class TemplateMethodSub1 < TemplateMethod
  def hoge1
    print("--hoge1--")
  end

  def hoge2
    print("--hoge2--")
  end

  def hoge3
    print("--hoge3--")
  end

end

class TemplateMethodSub2 < TemplateMethod
  def hoge1
    print("**hoge1**")
  end

  def hoge2
    print("**hoge2**")
  end

  def hoge3
    print("**hoge3**")
  end

end

tm = TemplateMethod.new()
tm.hoge


tm1 = TemplateMethodSub1.new()
tm1.hoge

tm2 = TemplateMethodSub2.new()
tm2.hoge
