require_relative "ship.rb"
require_relative "board.rb"
require_relative "enemy_cell.rb"


class Enemy < Enemycell
   def initialize()
        # @grid = []
        num = []
        @coordinates = []
        @ships = [destroyer = Grid.new(2, "(D)")]
        counter = 0

        p "Playing football on #{destroyer}." 

        @ships.size.times do
            num << counter
            counter += 1
        end

        p "Here is a #{num}."
        
        num.each do |row|
            num.each do |col|
                @coordinates << [row, col]
            end
        end


    end

   def deploy_opp_ships()
            counter = 0
            p "These are #{@coordinates}."
            hold_it = []
                while true
                spots_2_choose = @coordinates
                hold_it = spots_2_choose.sample
                pos = ["horizontal", "vertical"]
                
                  
                if @grid.mastor_funk(@ships[counter], hold_it[0], hold_it[1], pos.sample) != "Invalid Placement!"
                    counter += 1
                    spots_2_choose.delete(hold_it)
                    break
                end
            end
    end

   attr_reader :spots
   attr_reader :spots_to_fire
   attr_reader :coordinates
   attr_reader :ships
end