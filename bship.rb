class Grid12
    def initialize(hole, row, col, wrow, wcol)
        @hole = hole
        @row = row
        @col = col
        @wrow = wrow
        @wcol = wcol
    end

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
end




















