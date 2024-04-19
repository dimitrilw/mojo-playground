# https://discord.com/channels/1087530497313357884/1151418092052815884/1230656632044781678

from python import Python as py

alias TENOR_URL = "https://tenor.com/search/"

struct Scraper(Stringable):
    var url: String
    var search_term: String
    var memes: List[String]

    fn __init__(inout self, search_term: String):
        self.search_term = search_term
        self.url = TENOR_URL
        self.memes = List[String]()

    fn __str__(self) -> String:
        var res: String = ""
        for m in self.memes:
            if res: res += "\n"
            res += m[]
        return res

    fn get_memes(inout self) raises:
        var req = py.import_module("requests")
        var bs4 = py.import_module("bs4")
        var website = req.get(self.url + self.search_term + " meme").text
        var parser = bs4.BeautifulSoup(website, "html.parser")
        var meme_imgs = parser.find_all("img")
        for mi in meme_imgs:
            self.memes.append(str(mi["src"]))

fn main():
    try:
        var s = Scraper("omni-man")
        s.get_memes()
        print(s)
        print("done")
    except:
        print("derp")