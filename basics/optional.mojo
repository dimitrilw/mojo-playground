from collections.optional import Optional

fn main():
    """ Example of using the Optional class.

        >>> mojo optional.mojo
        1: A
        3: A
        4: D
        5: A
        6: DEFAULT
    """
    var a = Optional("A")
    var b = Optional[String](None)

    if a:
        print("1:", a.value())
    if b: # b is None, so this block is not executed
        print("2:", b.value())
    
    var c = a.or_else("C")
    print("3:", c)

    var d = b.or_else("D")
    print("4:", d)

    alias DEFAULT = "DEFAULT"

    var e = a.or_else(DEFAULT)
    print("5:", e)

    var f = b.or_else(DEFAULT)
    print("6:", f)

    var x: Optional[StringLiteral]
    x = Optional("X")
    print("7:", x.value())