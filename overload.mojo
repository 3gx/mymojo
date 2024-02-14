@value
struct MyString:
    fn __init__(inout self, string: StringLiteral):
        pass

fn foo(name: String):
    print("string:", name)

fn foo(name: MyString):
    print("myString:", name)

fn call_foo():
    let string = "Hello"
    foo(MyString(string))

fn main():
    call_foo()
