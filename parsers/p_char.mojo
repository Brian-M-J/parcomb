from parsers.string_parse_result import StringParseResult

fn p_char(char_to_match: String, message: String) -> StringParseResult:
    if message == String(""):
        return StringParseResult("No more input", String(""))
    else:
        first_char = message[0]
        if first_char == char_to_match:
            var remaining = message[1:]
            return StringParseResult(String("Found ", char_to_match), remaining)
        else:
            return StringParseResult(String("Expecting ", char_to_match, ". Got ", first_char), message)
