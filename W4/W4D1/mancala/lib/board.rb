require 'byebug'

class Board
  attr_accessor :cups


  def initialize(name1, name2)
    @cups = Array.new(14) 
    self.place_stones
    @name1, @name2 = name1, name2
  end

  def place_stones
    @cups.map!.with_index do |cup, i| 
      if i == 6 || i == 13
        []
      else 
        [:stone, :stone, :stone, :stone]
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if !start_pos.between?(0, 13)
    raise "Starting cup is empty" if cups[start_pos].empty?
  end

  def make_move(start_pos, current_player_name)
    stones = cups[start_pos].length
    cups[start_pos] = []
    i = start_pos
    until stones == 0
      i = (i + 1) % cups.length # goes to the next cup
      if i != 13
        cups[i] << :stone # add stone if it is not opponents cup
        stones -= 1 
      end
    end
    self.render
    self.next_turn(i)
  end

  def next_turn(ending_cup_idx)
    return :prompt if ending_cup_idx == 6
    return :switch if cups[ending_cup_idx].length == 1
    return ending_cup_idx if cups[ending_cup_idx].length > 1
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return (0..5).all? {|i| cups[i].empty?} || (7..12).all? {|j| cups[j].empty?}
  end

  def winner
    return :draw if cups[6] == cups[13] && cups[6].length == 6
    return @name1 if cups[6].length == 6
    return @name2 if cups[13].length == 6 
  end
end

b = Board.new("D", "K")
b.make_move(3, "K")
