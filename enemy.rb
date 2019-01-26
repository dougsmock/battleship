require_relative "bship.rb"
require_relative "board.rb"
require_relative "enemy_holes.rb"


class Enemy < Enemyhole
    def initialize(grid, opp_grid)
        @grid = grid
        num = []
        @coordinates = []
        @ships = [carrier = Ship.new(5, "(C)"), battleship = Ship.new(4, "(B)"), cruiser = Ship.new(3, "(Z)"), submarine = Ship.new(3, "(S)"), destroyer = Ship.new(2, "(D)")]
        counter = 0
        @grid.size.times do 
            num << counter
            counter += 1
        end
        num.each do |row|
            num.each do |col|
                @coordinates << [row, col]
            end
        end
    end

    def deploy_opp_ships()
        counter = 0 
        4.times do 
            while true
                spots_2_choose = @coordinates
                hold_it = spots_2_choose.sample
                pos = ["horizontal", "vertical"]
                if @grid.master_func(@ships[counter], hold_it[0], hold_it[1], pos.sample) != "Invalid Placement!"
                    counter += 1
                    spots_2_choose.delete(hold_it)
                    break
                end
            end
        end 
    end


    attr_reader :spots
    attr_reader :spots_to_fire
    attr_reader :coordinates
    attr_reader :ships
end