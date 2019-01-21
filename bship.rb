class Grid12
    def initialize(hole, row, col, wrow, wcol)
        @hole = hole
        @row = row
        @col = col
        @wrow = wrow
        @wcol = wcol
    end

    @row = 1
    @col = 1
    while @row <= 12
            print "#{@row}|"
            @row += 1
        while @col <= 12
            puts "#{@col}|"
            @col += 1
        end
    end


end








# @rows12 = 12
# @cols12 = 12

# puts "We have #{@rows12} rows and #{@cols12} columns."

# class BoardTwoFour
#     def initialize(rows, columns)
#         @rows24 = rows
#         @cols24 = columns
#     end
# end

# class BoardThreeSix
#     def initialize(rows, columns)
#         @rows36 = rows
#         @cols36 = columns
#     end
# end












