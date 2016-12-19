require_relative 'test_helper'
require './lib/board'

class BoardTest < Minitest::Test

  def test_it_can_create_board
    b = Board.new
    assert_equal 4, b.create_board.length
  end

  def test_it_can_print_lines_above_board
    b = Board.new


  end

end
