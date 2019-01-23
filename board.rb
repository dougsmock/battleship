require_relative "bship.rb"

class Board
    def initialize(size = 12, row, col)
        hole = ""
        if hole == "you"
            @grid = Array.new(size) {Array.new(size) {Youhole.new}}
        elsif hole == "enemy"
            @grid = Array.new(size) {Array.new(size) {Enemyhole.new}}
        end
        @size = size
        @end_point = size 
    end

    def place_ship(ship, row, col, pos)
        col = 1
        row = 1
        ship.size.times do 
            if pos == "horizontal"
                self.grid[row][col].take(ship)
                col += 1
            elsif pos == "vertical"
                self.grid[row][col].take(ship)
                row += 1
            end
        end
    end

    def atk_hole(row, col)
        if row < @size && col < @size && row >= 0 && col >= 0
            return @grid[row][col].if_hit()
        else
            return "Invalid shot."
        end
    end

    def pick_open_hole()
        open_spot = []
        @grid.each_with_index do |x, row|
            x.each_with_index do |y, col|
                if y.status == "open" || y.status == "taken"
                    open_spot << [row, col]
                end
            end
        end
        return open_spot.sample
    end

    def err()
        return "Invalid Placement!"
    end

    def check_location(ship, row, col, pos)
        if pos == "horizontal"
            col + ship.size < grid.length && (col < grid.length && row < grid.length) ? true : false
        elsif pos == "vertical"
            row + ship.size < grid.length && (col < grid.length && row < grid.length) ? true : false
        else 
            err()
        end
            
    end

    def check_spot(ship, row, col, pos)
        ship.size.times do 
            if self.grid[row][col].status != "open"
               return false 
            elsif pos == "horizontal"
                col += 1
            else
                row += 1
            end 
        end
       return true
    end

    def master_func(ship, row, col, pos)
        if check_location(ship, row, col, pos) == true && check_spot(ship, row, col, pos) == true
            place_ship(ship, row, col, pos)
        else 
            err()
        end

    end
    


    attr_reader :start_point
    attr_reader :grid
    attr_reader :size
    attr_reader :pos
    attr_reader :end_point

    puts "Something."



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



