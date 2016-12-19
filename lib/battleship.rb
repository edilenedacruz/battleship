require_relative 'messages'

class BattleShip
  attr_reader :messages
  def initialize
    @messages = Messages.new
  end

  def welcome
    puts messages.welcome
    game_sequence
  end

  def game_sequence
    puts messages.choose_destiny
    player_input = gets.chomp.downcase
      if player_input.start_with?("p")
        puts messages.play_message
        start_game #create method
      elsif player_input.start_with?("i")
        puts messages.instructions
        game_sequence
      elsif player_input.start_with?("q")
        messages.quit
        exit
      else
        puts "Do ye want t' keel haul th' plank?! This be nay a valid choice, please try again:"
        game_sequence
      end
  end

  def start_game
    puts "Starting game here"
  end
end

# if __FILE__ == $0
#
# BattleShip.new.welcome
