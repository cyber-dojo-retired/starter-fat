import hiker

def test_life_the_universe_and_everything():
    '''a simple example to start you off'''
    douglas = hiker.Hiker()
    assert douglas.answer() == 42

def green_traffic_light_pattern():
    return 'All tests passed'

if __name__ == '__main__':
    test_life_the_universe_and_everything()
    print(green_traffic_light_pattern())