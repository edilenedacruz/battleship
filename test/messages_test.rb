require_relative 'test_helper'
require './lib/messages'

class MessagesTest < Minitest::Test
  attr_reader :m
  def setup
    @m = Messages.new
  end

  def test_class_exists
    assert_instance_of Messages, m
  end

  def test_prints_welcome_phrase
    expected = "Ahoy Matey!\nYou be havin' crossed dangerous waters an' we must swashbuckle!"
    assert expected, m.welcome
  end

  def test_it_allows_player_choose_their_fate
    expected = "Type (p)lay if ye be ready t' battle, (i)nstructions if ye must need lessons on how t' run yer ship, or (q)uit if ye be too lily livered t' battle."
    assert expected, m.choose_destiny
  end

  def test_it_prints_instructions
    expected = "You will be playing against the computer. You will be given a grid where you can secretly place your ships by entering the coordinates like 'A1 A2'. If you hit my ship, an H will mark that position, if you missed, an M will mark it."
    assert expected, m.instructions
  end

  def test_it_prints_play_message
    assert "Let`s battle till th` end. Nay quarter given!!!", m.play_message
  end

  def test_it_prints_quit_message
    assert_equal "Quittin'?!! Ye be nay a captain, ye be a scurvy dog!", m.quit
  end
end
