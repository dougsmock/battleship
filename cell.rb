require_relative "ship.rb"
class Cell 
    def initialize()
        @status = "open"
        @content = "(-)" 
        @ship = ship
        @name = name
    end

    def if_hit()
        if @content.class == Ship
            @status = "X" 
            return @content.take_a_hit() 
        elsif @content == "(-)"
           @status = "O"
        end
      
    end
    
    def take(ship)
       if @content = ship
            @status = "taken"
       end
    end

    def content()
        @content
    end

    def to_s()
        if @status == "open"
            return "(-)"
        elsif @status == "taken"
            return @content.name
        end
        "(#{@status})"

    end
    attr_reader :name
    attr_reader :ship
    attr_reader :coordinates
    attr_reader :content
    attr_reader :status
end
