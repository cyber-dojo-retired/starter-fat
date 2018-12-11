#include "hiker.h"
#include <assert.h>
#include <stdio.h>

static void life_the_universe_and_everything(void)
{
    assert(answer() == 42);
}

static const char * green_traffic_light_pattern(void)
{
    return "All tests passed";
}

int main(void)
{
    life_the_universe_and_everything();
    puts(green_traffic_light_pattern());
}
