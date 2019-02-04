require_relative "cell2.rb"

class Board
    GRID_SIZE = {
		:small => 12,
		:medium => 24, 
		:large => 36
    }
    
    ROW = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'AA', 'BB', 'CC', 'DD', 'EE', 'FF', 'GG', 'HH', 'II', 'JJ']

	COLUMN = ['1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15', '16', '17', '18', '19', '20', '21', '22', '23', '24', '25', '26', '27', '28', '29', '30', '31', '32', '33', '34', '35', '36']

	SHIPS_LEFT = 4

    def initialize(difficulty)
		@difficulty = difficulty
		@grid_size = GRID_SIZE[difficulty]
		@grid_row = ROW.take(@grid_size)
		@grid_column = COLUMN.take(@grid_size)	
		grid = []
		coordinates = []
		grid_row = self.grid_row
    	grid_column = self.grid_column
    	grid_row.each do |letter|
	  		grid_column.each do |number|
	 			coordinates << [letter, number]
	 		end
	 		coordinates
	 	end
	 	@coordinates = coordinates
		grid_row.each do |letter|
	  		grid_column.each do |number|
	 			grid << Cell.new(row = "#{letter}", column = "#{number}")
	 		end
	 	end
	 	@grid = grid.each_slice(self.grid_size).to_a
	end

	attr_reader :difficulty, :grid_size, :grid_row, :grid_column, :grid, :coordinates





























end