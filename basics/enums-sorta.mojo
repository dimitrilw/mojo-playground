@value
@register_passable#("trivial")
struct Color(Stringable):
    var _kind: UInt8
    alias RED = Self(0)
    alias BLUE = Self(1)
    alias GREEN = Self(2)

    fn __eq__(self, rhs: Self) -> Bool:
        return self._kind == rhs._kind

    fn __str__(self) -> String:
        if self == Self.RED:
            return String("Red")
        elif self == Self.BLUE:
            return String("Blue")
        else:
            return String("Green")

fn main():
    var c = Color.RED
    print("c:", c)
    print("Color.GREEN:", Color.GREEN)
    print("Color.BLUE:", Color.BLUE)
    print("c == Color.RED:", c == Color.RED)
    print("c == Color.GREEN:", c == Color.GREEN)