require_relative 'board'

class ShipPlacement
  attr_reader :board
  def generate_board
    @board = Board.new.board_game
  end

  def user_input

  end

  # def access_board_coordinates
  #
  # end
end


=begin
1. need to split user input into coordinations "A" "1"
2. need to change board coordination from nil to "S"
=end
