# https://discord.com/channels/1087530497313357884/1228037375012241449/1228352741097603263

fn main():
    var c: Int = 0
    fn add(a: Int, /) capturing:
        c += a
    # ERROR: next line generates the following error:
    #        error: use of unknown declaration 'map',
    #        'fn' declarations require explicit variable declarations map[add](5)
    # map[add](5)