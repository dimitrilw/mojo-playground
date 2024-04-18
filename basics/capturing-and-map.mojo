# https://discord.com/channels/1087530497313357884/1228037375012241449/1228352741097603263

from algorithm import map

fn main():
    var c: Int = 0
    print("main, start, c:", c)
    fn add(a: Int, /) capturing:
        print("add, start, c:", c, " & a:", a)
        c += a
        print("add, end, c:", c)
    map[add](5)
    print("main, end, c:", c)