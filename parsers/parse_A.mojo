from parsers.bool_parse_result import BoolParseResult

fn parse_A(message: String) -> BoolParseResult:
    if message == String(""):
        return BoolParseResult(Bool(False), String(""))
    elif message[0] == String("A"):
        var remaining = message[1:]
        return BoolParseResult(Bool(True), String(remaining))
    return BoolParseResult(Bool(False), message)
