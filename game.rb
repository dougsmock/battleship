require_relative "bship.rb"
require_relative "holes.rb"
require_relative "board.rb"
require_relative "enemy_holes.rb"
require_relative "enemy.rb"

class Board 
    # SETS UP 12-MAN BOARD FOR YOU. WILL REPEAT FOR ENEMY.
    x = Board.new(12, "you")

    board = ""

    def show_board(x)
        countertop = 0
        print "  "
        x.board.each do |v, i|
            if countertop < 10
                print "  #{countertop}"
                countertop += 1
            else print " #{countertop}"
                countertop += 1
            end
        end 
    end

    puts "\n"
    counter = 0
    x.each do |v, i|
        v.each do |k, i|
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

puts "Something."
yourboard = show_board(x)
puts "#{yourboard}"

# def hit_or_miss(m, replyrow, replycol)
#     if m.board[replyrow.to_i][replycol.to_i].content.class == Ship
#         return m.board[replyrow.to_i][replycol.to_i].content.ship_status
#     else
#         return "Miss!"
#     end
# end

# def game_ender(x, m)
#     you_spots = 0
#     enemy_spots = 0
#     x.board.each do |row|
#         row.each do |hole|
#             if hole.status == "X"
#                 you_spots += 1
#             end
#         end
#     end

#     m.board.each do |row|
#         row.each do |hole|
#             if hole.status == "X"
#                 enemy_spots += 1
#             end
#         end
#     end

#     if enemy_spots == 17
#         return  "You Win!"
#     elsif you_spots == 17
#         return "You Lose"
#     else 
#         return true
#     end
# end

# def begin_game(x, m, enemy)
#     intro = {ship1: "Carrier = 5", ship2: "Battleship = 4", ship3: "Cruiser = 3", ship4: "Sub = 3", ship5: "Destroyer = 2"} 
#     show_opp_board(m); show_board(m)
#     intro.each_value do |v|
#         p v
#     end

#     intro.each do |k, v|
#         while true
#             puts "What row would you want to place the #{v}?"; replyrow = gets.chomp.to_i
#             puts "What column would you want to place the #{v}"; replycol = gets.chomp.to_i
#             puts "would you like to place the ship vertical or horizontal?"; replyvert = gets.chomp
#             if x.master_func(Ship.new(v[-1].to_i,"(#{v[0]})"), replyrow, replycol, replyvert) != "Invalid Placement!"
#                 system('cls')
#                 show_opp_board(m); show_board(x)
#                 break
#             end
#         end
#     end
#     enemy.deploy_opp_ships()


#     x.grid.each do |row|
#         row.each do |hole|
#             while true
#                 puts "what row would you like to fire at?"; replyrow = gets.chomp
#                 puts "what column would you like to fire at?"; replycol = gets.chomp
#                 if replyrow.gsub(/\D/, "").length > 0 && replycol.gsub(/\D/, "").length > 0
#                     if m.atk_hole(replyrow.to_i, replycol.to_i) != 'invalid shot'
#                         p hit_or_miss(m,replyrow, replycol)
#                         break
#                     end
#                 end
#             end
#                 sleep(3)
#                 if game_ender(x, m) != true
#                     break
#                 end
#             spot = x.pick_open_hole()
#             x.atk_hole(spot[0], spot[1])
#             system('cls')
#             show_opp_board(m); show_board(x)
#             if game_ender(x, m) != true
#                 break
#             end
            
#             puts "look at your grid! the enemy has fired"
#             puts "--------------------------------------"
#             puts "now your turn!"
#         end
#         if game_ender(x, m) != true
#             break
#         end
#     end
#     if game_ender(x, m) != true
#         puts game_ender(x, m)
#     end
# end
# # win_func()
# begin_game(x, m, enemy)
