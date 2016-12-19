require_relative 'test_helper'
require './lib/board'

class BoardTest < Minitest::Test
  attr_reader :b
  def setup
    @b = Board.new
  end

  def test_it_can_print_lines_that_wraps_board
    assert_equal ["============================="], b.wrapper
  end

  def test_it_creates_rows_with_numbers
    assert_equal [".", " 1 ", " 2 ", " 3 ", " 4 "], b.numbers_row
  end

  def test_it_can_create_rows_with_starting_letters
    expected = [["A", "   ", "   ", "   ", "   "], ["B", "   ", "   ", "   ", "   "], ["C", "   ", "   ", "   ", "   "], ["D", "   ", "   ", "   ", "   "]]
    assert_equal expected, b.letters_rows
  end

  def test_it_can_create_gaming_board
    expected = [["============================="], [".", " 1 ", " 2 ", " 3 ", " 4 "], ["A", "   ", "   ", "   ", "   "], ["B", "   ", "   ", "   ", "   "], ["C", "   ", "   ", "   ", "   "], ["D", "   ", "   ", "   ", "   "], ["============================="]]
    assert_equal expected, b.board_game
  end
end
