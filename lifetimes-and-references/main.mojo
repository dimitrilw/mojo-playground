fn main():
    var a: String = "Hello"
    var b: String = " Mojo"

    var a_ref = Reference(a)
    a_ref[] += b
    print(a) # prints "Hello Mojo"

    a_ref[] += b
    # ^last use of b, so it is destroyed here

    print(a_ref[]) # prints "Hello Mojo Mojo"
    # ^last use of a, so it is destroyed here