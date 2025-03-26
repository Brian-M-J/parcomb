from testing import assert_equal
from parsers.parse_A import parse_A
from parsers.p_char import p_char

fn main():
    print()
    print('parse_A("ABC") ==', parse_A("ABC"))  # should be ParseResult(True, "BC")
    print('parse_A("ZBC") ==', parse_A("ZBC"))  # should be ParseResult(False, "ZBC")
    print()
    print('p_char("A", "ABC") ==', p_char("A", "ABC"))  # should be BoolParseResult("Found A", "BC")
    print('p_char("A", "ZBC") ==', p_char("A", "ZBC"))  # should be BoolParseResult("Expecting A. Got Z", "ZBC")
    print('p_char("Z", "ZBC") ==', p_char("Z", "ZBC"))  # should be BoolParseResult("Found Z", "BC")
    print()
