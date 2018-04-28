// For more on how to use the excellent Catch test framework see
// https://github.com/philsquared/Catch

#include "hiker.hpp"
#include "catch.hpp"

TEST_CASE( "Life the universe and everything", "[hhgttg]" )
{
    REQUIRE( answer() == 42 );
}
