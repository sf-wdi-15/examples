Write JavaScript (or CoffeeScript, or Ruby) code to find a 9 letter
string of characters that contains only letters from

acdegilmnoprstuw

such that the hash(the_string) is

956446786872726

Int64 hash (String s) {
    Int64 h = 7
    String letters = "acdegilmnoprstuw"
    for(Int32 i = 0; i < s.length; i++) {
        h = (h * 37 + letters.indexOf(s[i]))
    }
    return h
}
