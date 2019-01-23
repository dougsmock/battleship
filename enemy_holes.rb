require_relative "holes.rb"
require_relative "bship.rb"
class Enemyhole < Hole
   


    
    def to_s()
        if @status == "open" || @status == "taken"
            return "(-)"
        end
        "(#{@status})"

        
    end

    attr_reader :ship
    attr_reader :size
    attr_reader :coordinates
    attr_reader :content
    attr_reader :status
end
