struct MyPair:
    var first: Int
    var second: Int

    fn __init__(inout self, first: Int, second: Int):
        self.first = first
        self.second = second

    fn dump(self):
        print(self.first, self.second)

fn use_pair():
    let mine = MyPair(2,4)
    mine.dump()

fn main():
    use_pair()


