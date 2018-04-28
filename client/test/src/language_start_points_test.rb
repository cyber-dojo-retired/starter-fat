require_relative 'test_base'

class LanguageStartPointsTest < TestBase

  def self.hex_prefix
    '444EB'
  end

  # - - - - - - - - - - - - - - - - - - - - -

  test '0F4',
  %w( languages ) do
    start_points = language_start_points
    expected = [
      'C (gcc), assert',
      'C#, NUnit',
      'C++ (g++), assert',
      'Python, py.test',
      'Python, unittest'
    ]
    assert_equal expected, start_points['languages']
  end

  # - - - - - - - - - - - - - - - - - - - -

  test '0F5',
  %w( exercise-names ) do
    start_points = language_start_points
    expected = [
      'Bowling_Game',
      'Fizz_Buzz',
      'Leap_Years',
      'Tiny_Maze'
    ]
    assert_equal expected, start_points['exercises'].keys.sort
  end

  # - - - - - - - - - - - - - - - - - - - -

  test '0F6',
  %w( instructions ) do
    @start_points = language_start_points

    expected = 'Write a program to score a game of Ten-Pin Bowling.'
    assert_line('Bowling_Game', expected)

    expected = 'Write a program that prints the numbers from 1 to 100.'
    assert_line('Fizz_Buzz', expected)

    expected = 'Write a function that returns true or false depending on '
    assert_line('Leap_Years', expected)

    expected = 'Alice found herself very tiny and wandering around Wonderland.'
    assert_line('Tiny_Maze', expected)
  end

  # - - - - - - - - - - - - - - - - - - - -

  def assert_line(name, expected)
    instructions = @start_points['exercises'][name]
    lines = instructions.split("\n")
    assert instructions.start_with?(expected), lines[0]
  end

end
