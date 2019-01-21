require_relative "bship.rb"


# Turn < CoinFlip < Game

# MyMissed < MyHoles < MyRows < MyColumns < MyBoard12
# UWin < USankMe < MyHitHoles < MyShips < MyBoard12
# MyDestroyer < MyShips
# MySub < MyShips
# MyCruiser < MyShips
# MyBattleship < MyShips
# MyCarrier < MyShips


# UrMissed < UrHoles < UrRows < UrColumns < UrBoard12
# IWin < ISankU < UrHitHoles < UrShips < UrBoard12
# UrDestroyer < UrShips
# UrSub < UrShips
# UrCruiser < UrShips
# UrBattleship < UrShips
# UrCarrier < UrShips
















# My ship board and my firing board (enemy board hidden)
# I declare ships and no. of holes
# I place my ships by choice ... only in horizontal and vertical
# Enemy places ships by random ... "chooses" a point, than goes horizontal and vertical from there.
# IMPORTANT: You may not place ships off the board. ... You may not place ships on same hole
# Ships are carrier (5), Battleship (4), Cruiser (3), Sub (3), Destroyer (2)
# Board is 12 rows, 12 columns
# Hole numbers 1 through 144, players won't see that.
# Call row and column ... math is (R * C) - (12 - C)
# Flip coin and see who goes first
# Alternate turns
# Shots either hit water or hit ship 
# My shots and enemy shots are recorded
# CANNOT FIRE SHOT IN SAME SPOT ... (Make enemy take new shots)
# If ship is hit, player will take next shot at adjacent hole
# If a ship has all holes hit, it is sunk
# "Sunk" totals are kept for each player
# 5 "sunk" ships win the game 