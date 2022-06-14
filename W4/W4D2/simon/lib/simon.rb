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
    unless game_over
      show_sequence
      require_sequence
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
    end
  end

  def require_sequence
    p "Repeat the sequence that was just shown to you, separating each color with a new line"
    @seq.each do |color|
      color_input = gets.chomp.split 
      if color[0] != color_input
        @game_over = true 
        break
      end
    end
  end

  def add_random_color
    i = rand(4)
    @seq << COLORS[i]
  end

  def round_success_message
    puts "Congrats! You had a successful round"
  end

  def game_over_message
    puts "Sorry, you messed up :( "
  end

  def reset_game
    @sequence_length = 1
    @game_over = false 
    @seq = []
  end
end
