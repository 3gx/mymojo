trait SomeTrait:
    fn required_method(self, x:Int): ...

struct SomeStruct(SomeTrait):
    fn __init__(inout self):
        pass
    fn required_method(self, x:Int):
        print("hello trait", x)

fn fun_with_traits[T: SomeTrait](x: T):
    x.required_method(42)

fn use_trait_function():
    var thing = SomeStruct()
    fun_with_traits(thing)

fn main():
    use_trait_function()
