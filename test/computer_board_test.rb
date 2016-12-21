require_relative 'test_helper'
require './lib/board'
require './lib/computer_board'


class ComputerBoardTest < Minitest::Test
  attr_reader :cb

  def setup
    @cb = ComputerBoard.new(4)
  end

  def test_it_can_access_board
    assert_instance_of Board, cb.grid
  end

  def test_it_can_split_coordinates
    assert_equal ["B4", "C4"], cb.get_coordinates("B4 C4")
  end

  def test_it_turn_user_coordinate_into_board_coordinate
    assert_equal ["3", "4"],["4","4"], cb.board_coordinates #B4 C4,
  end


end
=begin
after getting coordinates, make coordinates into array indexes and put it in the BOARD and then change board from nil to S
=end
