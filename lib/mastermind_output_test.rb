gem "minitest"
require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "mastermind_output"

class OutPutTest < MiniTest::Test

  def test_it_has_the_expected_messages
      expected = [:welcome, :wrong_guess, :you_win]
      printer = Printer.new
      expected.each do |message|
      assert printer.respond_to?(message), "Printer should have a #{message} method"
  end
end