from parsers.parse_result import ParseResult

fn parse_A(message: String) -> ParseResult:
    if message == String(""):
        return ParseResult(Bool(False), String(""))
    elif message[0] == String("A"):
        var remaining = message[1:]
        return ParseResult(Bool(True), String(remaining))
    return ParseResult(Bool(False), message)
