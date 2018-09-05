require_relative 'test_base'

class CustomStartPointsTest < TestBase

  def self.hex_prefix
    '9E66D'
  end

  # - - - - - - - - - - - - - - - - - - - - -

  test '9C1',
  %w( display-names are unique and sorted ) do
    start_points = custom_start_points
    [
      'Yahtzee refactoring, C# NUnit',
      'Yahtzee refactoring, C++ (g++) assert',
      'Yahtzee refactoring, Java JUnit',
      'Yahtzee refactoring, Python unitttest'
    ].each do |expected|
      assert start_points.include?(expected), expected
    end
  end

end
