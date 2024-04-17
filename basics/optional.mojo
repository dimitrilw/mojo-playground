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
        print("1:", a.value()) # prints "A"
    if b: # b is None, so this block is not executed
        print("2:", b.value())
    
    var c = a.or_else("C")
    print("3:", c) # prints "A"

    var d = b.or_else("D")
    print("4:", d) # prints "D"

    alias DEFAULT = "DEFAULT"

    var e = a.or_else(DEFAULT)
    print("5:", e) # prints "A"

    var f = b.or_else(DEFAULT)
    print("6:", f) # prints "DEFAULT"