gem "minitest"
require "minitest"
require "minitest/autorun"
require "minitest/pride"
require "../lib/game.rb"

  class GameTest < MiniTest::Test

    def test_it_runs
      assert Game.new
    end







  end