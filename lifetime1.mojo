@value
struct MyPet:
    var name: String
    var age: Int

fn consume(owned arg: String):
    pass

fn use(arg: MyPet):
    print(arg.name)

fn consume_and_use():
    var pet = MyPet("Selma", 5)
    consume(pet.name^)
    # pet.name.__moveinit__() runs here, which destroys pet.name
    # Now pet is only partially initialized

    # use(pet)  # This fails because pet.name is uninitialized

    pet.name = String("Jasper")  # All together now
    use(pet)                     # This is ok
    # pet.__del__() runs here (and only if the object is whole)

fn main():
    consume_and_use()
