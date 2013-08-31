require 'colorize'

class Cell

  attr_accessor :state, :coords
  
  def initialize (world, position)
    @state = state
    @world = world
    @position = position
    @x = position[0]
    @y = position[1]
  end

end



class Terrain

  attr_accessor :board

  def initialize
    @board = make_board
    # populate_board
  end

  def make_board
    Array.new(10) do |row|
      Array.new(10) { |col| Cell.new(self, [row, col]) }
    end
  end

  # def populate_board
  #   @board.sample(10).each do |space|
  #     space = Cell.new
  #   end
  # end

  def print_board
    @board.each do |row|
      row.each do |space|
        print space.nil? ? " _ " : " * "
      end
      print "\n\n"
    end
  end

end


class Move

  def initialize
    @world = Terrain.new 
  end

  def play
    # puts "Take a turn?"
    # turn = gets.chomp
    @world.print_board
  end

end

game = Move.new
game.play