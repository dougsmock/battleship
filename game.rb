require_relative "bship.rb"
require_relative "holes.rb"
require_relative "board.rb"
require_relative "enemy_holes.rb"
require_relative "enemy.rb"
puts "What size board would you like (a) 12x12, (b) 24x24, (c) 36x36?"
answer = gets.chomp
system('cls')
if answer == "a"
   x = Board.new(12, "you"); m = Board.new(12, "enemy"); enemy = Enemy.new(m, x)
elsif answer == "b"
   x = Board.new(24,"you"); m = Board.new(24, "enemy"); enemy = Enemy.new(m, x)
elsif answer == "c"
   x = Board.new(36, "you"); m = Board.new(36, "enemy"); enemy = Enemy.new(m, x)
end

def show_board(x)
    countertop = 0
    print "  "
    x.grid.each_with_index do |v, i|
        if countertop < 10
        print "  #{countertop}"
        countertop += 1
        else print " #{countertop}"
            countertop += 1
        end 
    end
    puts "\n"
    counter = 0
    x.grid.each_with_index do |v, i|
        v.each_with_index do |k, i|
            if i == 0 
                print " #{counter} #{k.to_s}"
                counter += 1   
            elsif i == x.end_point
                print "#{k.to_s} \n"
            else
                print "#{k.to_s}"
            end
        end
    end
end

def show_opp_board(m)
    show_board(m)
end

def hit_or_miss(m, replyrow, replycol)
    if m.grid[replyrow.to_i][replycol.to_i].content.class == Ship
        return m.grid[replyrow.to_i][replycol.to_i].content.ship_status
    else
        return "Miss!"
    end
end

def game_ender(o, m)
    you_spots = 0
    enemy_spots = 0
    x.grid.each do |row|
        row.each do |hole|
            if hole.status == "X"
                you_spots += 1
            end
        end
    end

    m.grid.each do |row|
        row.each do |hole|
            if hole.status == "X"
                enemy_spots += 1
            end
        end
    end

    if enemy_spots == 14
        return  "You Win!"
    elsif you_spots == 14
        return "You Lose"
    else 
        return true
    end
end

def begin_game(o, m, ai)
    intro = {ship1: "Carrier = 5", ship2: "Battleship = 4", ship3: "Cruiser = 3", ship4: "Sub = 3", ship5: "Destroyer = 2"} 
    show_opp_board(m); show_board(o)
    intro.each_value do |v|
        p v
    end

    intro.each do |k, v|
        while true
            puts "What row would you want to place the #{v}?"; replyrow = gets.chomp.to_i
            puts "What column would you want to place the #{v}"; replycol = gets.chomp.to_i
            puts "would you like to place the ship vertical or horizontal?"; replyvert = gets.chomp
            if o.master_func(Ship.new(v[-1].to_i,"(#{v[0]})"), replyrow, replycol, replyvert) != "Invalid Placement!"
                system('cls')
                show_opp_board(m); show_board(o)
                break
            end
        end
    end
    ai.deploy_opp_ships()


    x.grid.each do |row|
        row.each do |hole|
            while true
                puts "what row would you like to fire at?"; replyrow = gets.chomp
                puts "what column would you like to fire at?"; replycol = gets.chomp
                if replyrow.gsub(/\D/, "").length > 0 && replycol.gsub(/\D/, "").length > 0
                    if m.atk_hole(replyrow.to_i, replycol.to_i) != 'invalid shot'
                        p hit_or_miss(m,replyrow, replycol)
                        break
                    end
                end
            end
                sleep(3)
                if game_ender(o, m) != true
                    break
                end
            spot = o.pick_open_hole()
            o.atk_hole(spot[0], spot[1])
            system('cls')
            show_opp_board(m); show_board(o)
            if game_ender(o, m) != true
                break
            end
            
            puts "look at your grid! the enemy has fired"
            puts "--------------------------------------"
            puts "now your turn!"
        end
        if game_ender(o, m) != true
            break
        end
    end
    if game_ender(o, m) != true
        puts game_ender(o, m)
    end
end
# win_func()
begin_game(o, m, ai)
