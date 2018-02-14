require "test/unit"
require_relative "rps_game.rb"

class Rps_game_Test < Test::Unit::TestCase

  def test_PvsP
    assert_equal ["Dave", "P"],  rps_game_winner([["Dave","P"], ["Armando", "P"]])
  end
  def test_PvsS
    assert_equal ["Armando", "S"],  rps_game_winner([["Dave","P"], ["Armando", "S"]])
  end
  def test_PvsR
    assert_equal ["Dave", "P"],  rps_game_winner([["Dave","P"], ["Armando", "R"]])
  end
  def test_SvsP
    assert_equal ["Dave", "S"],  rps_game_winner([["Dave","S"], ["Armando", "P"]])
  end
  def test_SvsS
    assert_equal ["Dave", "S"],  rps_game_winner([["Dave","S"], ["Armando", "S"]])
  end
  def test_SvsR
    assert_equal ["Armando", "R"],  rps_game_winner([["Dave","S"], ["Armando", "R"]])
  end
  def test_RvsP
    assert_equal ["Armando", "P"],  rps_game_winner([["Dave","R"], ["Armando", "P"]])
  end
  def test_RvsS
    assert_equal ["Dave", "R"],  rps_game_winner([["Dave","R"], ["Armando", "S"]])
  end
  def test_RvsR
    assert_equal ["Dave", "R"],  rps_game_winner([["Dave","R"], ["Armando", "R"]])
  end
  def test_WrongNumber
    assert_raise WrongNumberOfPlayersError do
      rps_game_winner([["Dave", "R"], ["Armando", "S"], ["Stive", "P"]])
    end
  end
  def test_NoSuch
    assert_raise NoSuchStrategyErrors do
      rps_game_winner([["Dave", "R"], ["Armando", "D"]])
    end
  end

end
