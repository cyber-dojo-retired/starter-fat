#include <gtest/gtest.h>

extern "C"
{
#include "hiker.h"
}

using namespace ::testing;

TEST(Hiker, Life_the_universe_and_everything)
{
    ASSERT_EQ(42, answer());
}
