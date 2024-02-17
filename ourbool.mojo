@register_passable("trivial")
struct OurBool:
    var value: __mlir_type.i1

    fn __init__() -> Self:
        return Self {
           value: __mlir_op.`index.bool.constant`[
                    value=__mlir_attr.`false`,
        ]()
       }

def main():
    let a = OurBool()
    let b = a
