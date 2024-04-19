fn add_small_ints(a: Int, b: Int) raises -> Int:
    alias LIMIT = int(1e10) # hard-coded limit
    if a > LIMIT or b > LIMIT:
        raise Error("Yippee! I'm an Error! Maximum allowed value is " + str(LIMIT))
    return a + b

fn main() raises:
    var a = 1
    var b = 2
    var c = add_small_ints(a, b)
    print(c)