fn use(arg: MyPet):
    pass

struct MyPet:
    var name: String
    var age: Int

    fn __init__(inout self, name: String, age: Int, cond: Bool):
        self.name = name
        # use(self)  # Cant use
        if cond:
            self.age = age
            use(self)  # Safe to use immediately!

        self.age = age
        use(self)  # Safe to use immediately!

fn main():
  let mypet = MyPet("Loki", 4, False)
  #let yourpet = mypet


