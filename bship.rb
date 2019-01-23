require_relative "board.rb"


class MyShips

    def initialize(name, shipholes)
        @name = name
        @shipholes = shipholes
    end

    def name_ships(name)
        @destroyer = MyShips.new(name = "Destroyer")
        @cruiser = MyShips.new(name = "Cruiser")
        @sub = MyShips.new(name = "Sub")
        @bship = MyShips.new(name = "Battleship")
        @carrier = MyShips.new(name = "Carrier")
    end

    def holes(name, shipholes)
        @destroyer = 2
        @cruiser = 3
        @sub = 3
        @bship = 4
        @carrier = 5
    end

    attr_reader :name
    attr_reader :shipholes


    puts "#{@destroyer}"
    puts "#{@cruiser}"
    puts "#{@sub}"
    puts "#{@bship}"
    puts "#{@carrier}"


end














# My ship board and my firing board (enemy ships hidden)
# I place my ships by choice ... only in horizontal and vertical
# Enemy places ships by random ... "chooses" a point, than goes horizontal and vertical from there.
# IMPORTANT: You may not place ships off the board. ... You may not place ships on same hole
# Ships are carrier (5), Battleship (4), Cruiser (3), Sub (3), Destroyer (2)
# Board is 12 rows, 12 columns
# Hole numbers 1 through 12 by rows 1 through 12 by columns. 
# Call row and column
# Flip coin and see who goes first
# Alternate turns
# Shots either hit water (miss) or hit ship 
# My shots and enemy shots are recorded
# If ship is hit, player will take next shot at adjacent hole
# If a ship has all holes hit, it is sunk
# "Sunk" totals are kept for each player
# 5 "sunk" ships win the game 






















