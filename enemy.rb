require_relative "ship.rb"
require_relative "board.rb"
require_relative "enemy_cell.rb"


class Enemy < Enemycell
   def initialize()
        # @grid = grid
        num = []
        @coordinates = []
        @ships = [destroyer = Grid.new(2, "(D)")]
        counter = 0

        @ships.size.times do
            num << counter
            counter += 1
        end
        
        num.each do |row|
            num.each do |col|
                @coordinates << [row, col]
            end
        end
    end

    # def mastor_funk(ship, row, col, pos)
    #     if check_location(ship, row, col, pos) == true && check_spot(ship, row, col, pos) == true
    #         place_ship(ship, row, col, pos)
    #     else 
    #         err()
    #     end

    # end


    def deploy_opp_ships()
        # @opp_row = [*0..3]
        # @opp_col = [*0..3]
        # @first_opp_hole = [@opp_row.sample, @opp_col.sample]
        # @vert_or_horz = [0, 1]
        # if @vert_or_horz == 0
        #     p "Goes vertical."
        # elsif @vert_or_horz == 1
        #     p "Goes horizontal."        

        # end


        
        # randomize row and col for ship. ship_occupied becomes true.
        # Ship not occupied becomes false
        # If hit on occupied, becomes (X) on screen and "hit" in status. 
        # Two hits ends the game.




        counter = 0
        1.times do
            while true
                spots_2_choose = @coordinates
                hold_it = spots_2_choose.sample
                pos = ["horizontal", "vertical"]
                
                p "Let's hold it #{hold_it} here."
                  
                if @grid.mastor_funk(@ships[counter], hold_it[0], hold_it[1], pos.sample) != "Invalid Placement!"
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