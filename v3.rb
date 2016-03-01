# This makes the game playable. Changes include:
# - Adding a current_turn ivar to track who's turn it is
# - Add a while loop for the game to run in
# - Add some I/O to get row and column values from the command line
# - Toggle the current turn back and forth

X = "X"
O = "O"
BLANK = " "

@current_turn = X

@square_1A = BLANK
@square_1B = BLANK
@square_1C = BLANK

@square_2A = BLANK
@square_2B = BLANK
@square_2C = BLANK

@square_3A = BLANK
@square_3B = BLANK
@square_3C = BLANK

def print_board
    puts "  A B C"
    puts "  - - -"
    puts "1|#{@square_1A}|#{@square_1B}|#{@square_1C}|"
    puts "  - - -"
    puts "2|#{@square_2A}|#{@square_2B}|#{@square_2C}|"
    puts "  - - -"
    puts "3|#{@square_3A}|#{@square_3B}|#{@square_3C}|"
    puts "  - - -"
end

while true do
    print_board
    
    puts "Current turn: #{@current_turn}"
    
    print "Enter a row: "
    row = gets.strip
    
    print "Enter a column: "
    column = gets.strip
    
    if row == "1"
        if column == "A"
            @square_1A = @current_turn
        elsif column == "B"
            @square_1B = @current_turn
        elsif column == "C"
            @square_1C = @current_turn
        end
    elsif row == "2"
        if column == "A"
            @square_2A = @current_turn
        elsif column == "B"
            @square_2B = @current_turn
        elsif column == "C"
            @square_2C = @current_turn
        end
    elsif row == "3"
        if column == "A"
            @square_3A = @current_turn
        elsif column == "B"
            @square_3B = @current_turn
        elsif column == "C"
            @square_3C = @current_turn
        end
    end
    
    if @current_turn == X
        @current_turn = O
    elsif @current_turn == O
        @current_turn = X
    end
end
