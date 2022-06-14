require "byebug"

class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @seq = []
    @game_over = false
  end

  def play
    take_turn until game_over
    game_over_message
    reset_game
  end

  def take_turn
    until game_over
      debugger
      color_shown = show_sequence
      color_input = require_sequence
      if color_input != seq
        game_over = true 
        break
      end
      round_success_message
      sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    return seq
  end

  def require_sequence
    p "Repeat the sequence that was just shown to you, separating each color with a new line"
    return input = gets.chomp.split("\n")
  end

  def add_random_color
    i = rand(4)
    seq << COLORS[i]
  end

  def round_success_message
    puts "Congrats! You had a successful round"
  end

  def game_over_message
    puts "Sorry, you messed up :( "
  end

  def reset_game
    sequence_length = 1
    game_over = false 
    seq = []
  end
end
