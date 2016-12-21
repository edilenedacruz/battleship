require_relative 'test_helper'
require './lib/human'

class HumanTest < Minitest::Test
  attr_reader :human
  def setup
    @human = Human.new
  end

  def test_user_input_can_become_a_coordinate
    assert_equal [4, 4], human.create_coordinate("d4") #[5,4]
  end

end
