require 'pry'
require_relative 'board'

class ComputerBoard
  attr_reader :grid
  def initialize(size = 4)
    @grid = Board.new(size)
  end

  def ship_coordinates(ship_coord)
    coordinates = ship_coord.upcase.split("")
    binding.pry

  end
end


# ComputerBoard.new(4)
#
def ship_coordinate #B4 C4
  user_input = gets.chomp.upcase
  separate_coord = user_input.split #["B4", "C4"]
  x = separate_coord[0] #"B4"
  y = separate_coord[1] #"C4"
 #find B4 in board
 x[0] "B"

 x_in_board is 2 indexes ahead for first element and second element is the same index
end
