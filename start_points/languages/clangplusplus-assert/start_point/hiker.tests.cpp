#include "hiker.hpp"
#include <cassert>
#include <iostream>

namespace {

    void life_the_universe_and_everthing()
    {
        assert(answer() == 42);
    }

    const char * green_traffic_light_pattern()
    {
        return "All tests passed";
    }
} // namespace

int main()
{
    life_the_universe_and_everthing();
    std::cout << green_traffic_light_pattern();
}
