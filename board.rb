require_relative "bship.rb"

class Board12 < Hole
    def initialize(size = 12, row, col)
        if cell == "you"
            @grid = Array.new(size) {Array.new(size) {Youhole.new}}
        elsif cell == "enemy"
            @grid = Array.new(size) {Array.new(size) {Enemyhole.new}}
        end
        @size = size
        @end_point = size 
    end




end





# class Board
#         @open = "~"
#         @hit = "H"
#         @missed = "X"
    
#     print "\n\nENEMY BOARD\n"
#     print "--|\s1|\s2|\s3|\s4|\s5|\s6|\s7|\s8|\s9|10|11|12|\n"
#     @row = 1
#     @col = 1
#     while @row <= 12
#         print "\s#{@row}| #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  ~\n"
#         @row += 1
#     end


#     print "\nOWN BOARD\n"
#     print "--|\s1|\s2|\s3|\s4|\s5|\s6|\s7|\s8|\s9|10|11|12|\n"
#     @row = 1
#     @col = 1
#     while @row <= 12
#         print "\s#{@row}| #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  #{@open}  ~\n"
#         @row += 1
#     end



end  



