###### (FILE board_class.rb)
# require_relative "cell_class.rb"

# class Board
    # grid rows
    # grid columns
    # initializes the Board class with grid size attribute(how many cells in each row/column) and based on the difficulty attribute chosen

	

    # is first array of multidimensional row array - row[row_index(coordinates)][column_index(coordinates)]
    # second array of multidimensional row array - row[row_index(coordnates)][column_index(coordinates)]
    # pulls out individual cell class information with cooresponding board coordinates
    # gives the row value for each cell
    # gives the column value for each cell
    # checks to see if the cells are consecutive in a row, if so returns true
    # checks if cells are in same row down a column, if so returns true
    # ship.length must be same as the number of cells given for ship to be placed in - returns true if so, false if not
    # doesn't let you place a ship where there's already another ship, all cells coordinates must have status of empty, if all empty, returns true.
    # checks to make sure the cell rows are valid places in the grid
    # checks to make sure the cell columns are valid places in grid
    # final method to determine if grid holds cell's row and column
    # returns true if all criteria are true for the cells and ship desired
    # places a ship into the desired cells if it is true for valid_placement?
    # need to use this no_sho_ships with cloned opponent's grid and make changes to the regular grid, then translate it to the render_without_ships grid for console; renders the grid without showing where the ships are placed, used for opponent's board
    # renders grid, showing where the ships are for user's board



######## FILE (cell_class.rb)

# class Cell

# STATUS = {
# 		:empty      => ".", 
# 		:hit        => "X",
# 		:miss       => "0", 
# 		:battleship => "B",
# 		:cruiser    => "C",
# 		:submarine  => "S",
# 		:destroyer  => "D"
# 	}

# initializes Cell class with @coordinates for each individual cell and empty status(".")
# changes the status of the cell to :hit if there is a hit
# changes status of the cell to :miss if there was a miss attempt
# allows you to place a certain ship in the cell and makes that ship object pointer the status
# does not show the ships status symbol, but instead "hides" it under the empty status "." - if there is a hit or a miss, it shows it, however
# shows all cell status's as they are
# returns the coordinates of row and column for each cell as one string

######### FILE game_class.rb

# require_relative "board_class.rb"
# require_relative "player_class.rb"

# class Game
# asks player to choose difficulty of beginner, intermediate or advanced
# shows the player1 and opponent board for game play
# replace the system clear, keeping it commented out right now to see previous screen for debugging
# asks player1 for coordinates to fire upon and changes the status of that coordinate on enemy board with corresponding action and method
# changes the easily entered coordinate of A1 into "A, 1" for the program to read
# alternates player1 and opponent turns


####### FILE player_class.rb

# require_relative "board_class.rb"
# class Player
# to play game and see where opponent ships are for testing purposes, comment out the first line (44 - @board.no_show_ships) and comment in second line (45 - @board.show_ships)




