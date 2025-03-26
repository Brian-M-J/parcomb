from parsers.parse_result import ParseResult

fn p_char(char_to_match: String, message: String) -> ParseResult:
    if message == String(""):
        return ParseResult("No more input", String(""))
    else:
        first_char = message[0]
        if first_char == char_to_match:
            var remaining = message[1:]
            return ParseResult(String("Found ", char_to_match), remaining)
        else:
            return ParseResult(String("Expecting ", char_to_match, ". Got ", first_char), message)
