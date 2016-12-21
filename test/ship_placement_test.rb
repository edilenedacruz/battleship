require_relative 'test_helper'
require './lib/ship_placement'
require './lib/board'

class ShipPlacementTest < Minitest::Test
  attr_reader :sp
  def setup
    @sp = ShipPlacement.new
  end

  def test_it_can_access_board
    assert_instance_of Array, sp.generate_board
  end

  def test_it_can_accept_accept_user_input
    assert_equal "", sp.user_input
  end
end
