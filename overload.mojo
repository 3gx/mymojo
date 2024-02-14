@value
struct MyString:
    fn __init__(inout self, string: StringLiteral):
        pass

fn foo(name: String):
    print("string:", name)

fn foo(name: MyString):
    print("myString:")

fn call_foo():
    let string = "Hello"
    foo(MyString(string))
    foo(String(string))

fn main():
    call_foo()
