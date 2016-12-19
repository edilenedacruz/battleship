require 'pry'
class Board
  attr_reader :size
  def initialize(size = 4)
    @size = size
  end

  def wrapper
    [("=======" * size + "=")]
  end

  def numbers_row
    numbers_row = ["."]
    size.times { |num| numbers_row << "#{num + 1}".center(3) }
    numbers_row
  end

  def letters_rows
    last_letter = (("A".ord) + (size-1)).chr
    rows = ("A"..last_letter).map do |letter|
      Array.new(size, "   ").unshift(letter)
    end
    rows
  end

  def board_game
    grid = letters_rows
    grid.unshift(numbers_row)
    grid.unshift(wrapper)
    grid.push(wrapper)
  end
end
