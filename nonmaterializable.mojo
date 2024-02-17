@value
@register_passable("trivial")
struct HasBool:
    var y: Bool

    fn __init__(y: Bool) -> Self:
        return Self {y: y}

    @always_inline("nodebug")
    fn __init__(nms: NmStruct) -> Self:
        return Self {y: True if (nms.x == 77) else False}

@value
@nonmaterializable(HasBool)
@register_passable("trivial")
struct NmStruct:
    var x: Int

    @always_inline("nodebug")
    fn __add__(self: Self, rhs: Self) -> Self:
        return NmStruct(self.x + rhs.x)

fn main():
    alias stillNmStruct = NmStruct(1) + NmStruct(2)
    # When materializing to a run-time variable, it is automatically converted,
    # even without a type annotation.
    let convertedToHasBool = stillNmStruct
    print(stillNmStruct.x)
    print(convertedToHasBool.y)
