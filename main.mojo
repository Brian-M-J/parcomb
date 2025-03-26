from testing import assert_equal
from parsers.parse_A import parse_A
from parsers.p_char import p_char

fn main():
    print()
    print('parse_A("ABC") ==', parse_A("ABC"))  # should be BoolParseResult(True, "BC")
    print('parse_A("ZBC") ==', parse_A("ZBC"))  # should be BoolParseResult(False, "ZBC")
    print()
    print('p_char("A", "ABC") ==', p_char("A", "ABC"))  # should be StringParseResult("Found A", "BC")
    print('p_char("A", "ZBC") ==', p_char("A", "ZBC"))  # should be StringParseResult("Expecting A. Got Z", "ZBC")
    print('p_char("Z", "ZBC") ==', p_char("Z", "ZBC"))  # should be StringParseResult("Found Z", "BC")
    print()
