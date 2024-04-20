fn my_function(x: Int, y: __type_of(x)) -> String:
    var z: __type_of(x) = y
    return str(z)

fn main():
    var x: Int = 5
    var y: Int = 20
    var z = my_function(x, y)
    print(z)