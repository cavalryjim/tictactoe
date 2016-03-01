# This first program outputs a tic tac toe board
# Change the square variables to see the board in different states

X = "X"
O = "O"
BLANK = " "

square_1A = BLANK
square_1B = X
square_1C = X

square_2A = BLANK
square_2B = X
square_2C = O

square_3A = BLANK
square_3B = O
square_3C = BLANK

puts "  A B C"
puts "  - - -"
puts "1|#{square_1A}|#{square_1B}|#{square_1C}|"
puts "  - - -"
puts "2|#{square_2A}|#{square_2B}|#{square_2C}|"
puts "  - - -"
puts "3|#{square_3A}|#{square_3B}|#{square_3C}|"
puts "  - - -"
