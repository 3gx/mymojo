
alias OurTrue = OurBool(__mlir_attr.`true`)
alias OurFalse = OurBool(__mlir_attr.`false`)

@register_passable("trivial")
struct OurBool:
    var value: __mlir_type.i1

    fn __init__() -> Self:
        return OurFalse

    fn __init__(value: __mlir_type.i1) -> Self:
       return Self { value: value }

    #fn __bool__(self) -> Bool:
    #  return Bool(self.value)

    fn __mlir_i1__(self) -> __mlir_type.i1:
      return self.value

def main():
    let e = OurTrue
    let f = OurFalse
    if e:
      print("It's true!")

