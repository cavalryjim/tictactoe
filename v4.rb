# Let's move the current turn code into a function.
# Let's also move the code we use to select a square into a separate function
# This also necessitates a setter for the rows
#
# Let's also move the game itself into a recursive function so we can easily prevent the loop and try out some of these methods in the console

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

def get_square(row, column)
    if row == "1"
        if column == "A"
            @square_1A
        elsif column == "B"
            @square_1B
        elsif column == "C"
            @square_1C
        end
    elsif row == "2"
        if column == "A"
            @square_2A
        elsif column == "B"
            @square_2B
        elsif column == "C"
            @square_2C
        end
    elsif row == "3"
        if column == "A"
            @square_3A
        elsif column == "B"
            @square_3B
        elsif column == "C"
            @square_3C
        end
    end
end

def set_square(row, column, value)
    if row == "1"
        if column == "A"
            @square_1A = value
        elsif column == "B"
            @square_1B = value
        elsif column == "C"
            @square_1C = value
        end
    elsif row == "2"
        if column == "A"
            @square_2A = value
        elsif column == "B"
            @square_2B = value
        elsif column == "C"
            @square_2C = value
        end
    elsif row == "3"
        if column == "A"
            @square_3A = value
        elsif column == "B"
            @square_3B = value
        elsif column == "C"
            @square_3C = value
        end
    end
end

def tic_tac_toe
    print_board
    
    puts "Current turn: #{@current_turn}"
    
    print "Enter a row: "
    row = gets.strip
    
    print "Enter a column: "
    column = gets.strip
    
    set_square(row, column, @current_turn)
    
    if @current_turn == X
        @current_turn = O
    elsif @current_turn == O
        @current_turn = X
    end
    
    tic_tac_toe
end

tic_tac_toe
