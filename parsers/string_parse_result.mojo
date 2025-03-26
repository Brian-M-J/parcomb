struct StringParseResult(EqualityComparable, Stringable, Writable):
    var result: String
    var rest: String

    fn __init__(out self, owned result: String, owned rest: String):
        self.result = result^
        self.rest = rest^
    
    fn __eq__(self, other: Self) -> Bool:
        return self.result == other.result and self.rest == other.rest
    
    fn __ne__(self, other: Self) -> Bool:
        return not (self == other)
    
    fn __str__(self) -> String:
        return String("StringParseResult(", self.result, self.rest, ")")
    
    fn write_to[W: Writer](self, mut writer: W):
        var string = "StringParseResult"
        # Write a single `Span[Byte]`:
        writer.write_bytes(string.as_bytes())
        # Pass multiple args that can be converted to a `Span[Byte]`:
        writer.write("(", self.result, ", ", self.rest, ")")
