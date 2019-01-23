class MyShips
    attr_accessor :name, :shipholes

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


end

puts "#{@destroyer}"
puts "#{@cruiser}"
puts "#{@sub}"
puts "#{@bship}"
puts "#{@carrier}"









        print "OWN BOARD\n"
        print "--|\s1|\s2|\s3|\s4|\s5|\s6|\s7|\s8|\s9|10|11|12|\n"
        print "\s1|\n\s2|\n\s3|\n\s4|\n\s5|\n\s6|\n\s7|\n\s8|\n\s9|\n10|\n11|\n12|\n---------------------------------------\n"
        print "\n\n"

        print "ENEMY BOARD\n"
        print "--|\s1|\s2|\s3|\s4|\s5|\s6|\s7|\s8|\s9|10|11|12|\n"
        print "\s1|\n\s2|\n\s3|\n\s4|\n\s5|\n\s6|\n\s7|\n\s8|\n\s9|\n10|\n11|\n12|\n---------------------------------------\n"
        print "\n\n"

    @row = 1
    @col = 1
    while @row <= 12
        @col = 1
        while @col < 12
            print " ~"
            @col += 1
            if @col == 12
                print " ~\n"
                @row += 1
            end
        end
    end








# My ship board and my firing board (enemy board hidden)
# I place my ships by choice ... only in horizontal and vertical
# Enemy places ships by random ... "chooses" a point, than goes horizontal and vertical from there.
# IMPORTANT: You may not place ships off the board. ... You may not place ships on same hole
# Ships are carrier (5), Battleship (4), Cruiser (3), Sub (3), Destroyer (2)
# Board is 12 rows, 12 columns
# Hole numbers 1 through 144, players won't see that.
# Call row and column ... math is (R * C) - (12 - C)
# Flip coin and see who goes first
# Alternate turns
# Shots either hit water or hit ship 
# My shots and enemy shots are recorded
# If ship is hit, player will take next shot at adjacent hole
# If a ship has all holes hit, it is sunk
# "Sunk" totals are kept for each player
# 5 "sunk" ships win the game 






















