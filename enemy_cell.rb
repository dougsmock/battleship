require_relative "cell.rb"
require_relative "ship.rb"
class Enemycell < Cell
       
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
