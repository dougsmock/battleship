require_relative "board.rb"


class Ship
    def initialize(size, name)
        @size = size
        @name = name
        @hit_count = 0
    end

    def type_of_ship()
        return @name
    end

    def size_of_ship()
        return @size
    end

    def hitter()
        return @hit_count
    end

    def take_a_hit()  
        @hit_count += 1
        p @hit_count
        if @hit_count != @size
            @ship_status = "You hit a ship!"
        elsif @hit_count == @size
            @ship_status = "You sank my #{name.capitalize}!"
        end
      
    end

    attr_reader :ship_status
    attr_reader :ship
    attr_reader :size
    attr_reader :name
    attr_reader :hit_count
end













# TENTATIVE PLAN.
# My ship board and my firing board (enemy ships hidden)
# I place my ships by choice ... only in horizontal and vertical
# Enemy places ships by random ... "chooses" a point, than goes horizontal and vertical from there.
# IMPORTANT: You may not place ships off the board. ... You may not place ships on same hole
# Ships are carrier (5), Battleship (4), Cruiser (3), Sub (3), Destroyer (2)
# Board is 12 rows, 12 columns (or 24 or 36)
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






















