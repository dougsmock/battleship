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
    
# is first array of multidimensional row array - row[row_index(coordinates)][column_index(coordinates)]
	def row_index(row, column)
		ROW.index(row)
	end

# second array of multidimensional row array - row[row_index(coordnates)][column_index(coordinates)]
	def column_index(row, column)
		COLUMN.index(column)
	end

# pulls out individual cell class information with cooresponding board coordinates
	def cell_coordinates(row, column)
		row = row_index(row, column)
		column = column_index(row, column)
		self.grid[row][column]
	end	

# gives the row value for each cell
	def row_arr(cells)
		row_arr = []
		cells.each do |row|
			row_arr << row[0]
		end
		row_arr
	end

# gives the column value for each cell
	def column_arr(cells)
		column_arr = []
		cells.each do |column|
			column_arr << column[1]
		end
		column_arr
	end

# checks to see if the cells are consecutive in a row, if so returns true
	def valid_placement_row?(ship, cells)
		row_arr = row_arr(cells)
		column_arr = column_arr(cells)
		((column_arr.last.to_i - column_arr.first.to_i) == (column_arr.count - 1)) && (row_arr.uniq.count == 1)
	end

# checks if cells are in same row down a column, if so returns true
	def valid_placement_column?(ship, cells)
		row_arr = row_arr(cells)
		column_arr = column_arr(cells)	
		((ROW.index(row_arr.last) - ROW.index(row_arr.first)) == (row_arr.count - 1)) && (column_arr.uniq.count == 1)		
	end		

# ship.length must be same as the number of cells given for ship to be placed in - returns true if so, false if not
	def valid_placement_length?(ship, cells)
		ship
		ship.length == cells.length
	end

# doesn't let you place a ship where there's already another ship, all cells coordinates must have status of empty, if all empty, returns true.
	def valid_placement_empty?(ship, cells)
		ship
		status_arr = []
		cells.each do |row, column|
			status_arr << self.cell_coordinates(row, column).status
		end
		status_arr.uniq.count == 1
	end

# checks to make sure the cell rows are valid places in the grid
	def valid_row?(ship, cells)
		row_arr = row_arr(cells)
		arr = []
		row_arr.each do |letter|
			arr << (ROW.index(letter) < @grid_size)
		end
		arr
		arr.uniq == [true]
	end

# checks to make sure the cell columns are valid places in grid
	def valid_column?(ship, cells)
		column_arr = column_arr(cells)
		arr2 = []
		column_arr.each do |number|
			arr2 << (COLUMN.index(number) < @grid_size)
		end
		arr2
		arr2.uniq == [true]
	end

# final method to determine if grid holds cell's row and column
	def valid_row_column?(ship, cells)
		(valid_row?(ship, cells)) && (valid_column?(ship, cells))
	end			

# returns true if all criteria are true for the cells and ship desired
	def valid_placement?(ship, cells)
		(valid_row_column?(ship, cells) && valid_placement_empty?(ship, cells) && valid_placement_length?(ship, cells)) && (valid_placement_row?(ship, cells) || valid_placement_column?(ship, cells))
	end

# places a ship into the desired cells if it is true for valid_placement?
	def place(ship, cells)
		# @ship = ship
		if valid_placement?(ship, cells) == false
			"Invalid Coordinates"
		else
			cells.each do |row, column|
				self.cell_coordinates(row, column).place_ship(ship)
			end
		end
	end

# need to use this no_sho_ships with cloned opponent's grid and make changes to the regular grid, then translate it to the render_without_ships grid for console; renders the grid without showing where the ships are placed, used for opponent's board
	def no_show_ships
		grid = []
		self.grid.each do |row|
			row.each do |cell|
				grid << cell.render_without_ships
			end
		end
		grid.each_slice(self.grid_size).to_a
	end

# renders grid, showing where the ships are for user's board
	def show_ships
		grid = []
		self.grid.each do |row|
			row.each do |cell|
				grid << cell.render_with_ships
			end
		end
		grid.each_slice(self.grid_size).to_a
	end

end

