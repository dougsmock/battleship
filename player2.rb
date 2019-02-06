require_relative "board2.rb"

class Player
    def initialize(player, difficulty)
		@player = player
		@board = Board.new(difficulty)
		@carrier = Ship.new(:carrier)
		@battleship = Ship.new(:battleship)
		@submarine = Ship.new(:submarine)
		@destroyer = Ship.new(:destroyer)
		@coordinates_to_play = Board.new(difficulty).coordinates
		@ships_left = Board::SHIPS_LEFT
	end

	attr_reader :player, :board, :carrier, :battleship, :submarine, :destroyer, :coordinates_to_play

	attr_accessor :ships_left

	def show_player_board
		board_layout = @board.show_ships
		row_label = @board.grid_column
		column_label = @board.grid_row
		puts
		print "#{@player}'s Board: #{@ships_left} Ships Remaining"
		puts
		puts
		print "\t"
		print row_label.join("\t")
		puts
		board_layout.each_with_index do |row, i|
  			print " #{column_label[i]}"
 			print "\t"
  			print row.join("\t")
  			puts
  		end
  		puts
  		puts
	end

    # to play game and see where opponent ships are for testing purposes, comment out the first line (44 - @board.no_show_ships) and comment in second line (45 - @board.show_ships)

	def show_opponent_board
		board_layout = @board.no_show_ships
		# board_layout = @board.show_ships
		row_label = @board.grid_column
		column_label = @board.grid_row
		puts
		print "#{@player} Board: #{@ships_left} Ships Remaining"
		puts
		puts
		print "\t"
		print row_label.join("\t")
		puts
		board_layout.each_with_index do |row, i|
  			print " #{column_label[i]}"
 			print "\t"
  			print row.join("\t")
  			puts
  		end
  		puts
  		puts
  	end

 	def to_s
 		@player.capitalize
 	end

end 