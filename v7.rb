# Nested array for the entire board.

X = "X"
O = "O"
BLANK = " "

@current_turn = X

@board = [
    [BLANK, BLANK, BLANK],
    [BLANK, BLANK, BLANK],
    [BLANK, BLANK, BLANK]
]

def print_board
    puts "  A B C"
    puts "  - - -"
    puts "1|#{@board[0].join("|")}|"
    puts "  - - -"
    puts "2|#{@board[1].join("|")}|"
    puts "  - - -"
    puts "3|#{@board[2].join("|")}|"
    puts "  - - -"
end

def row_index(row)
    if row == "1"
        0
    elsif row == "2"
        1
    elsif row == "3"
        2
    end
end

def column_index(column)
    if column == "A"
        0
    elsif column == "B"
        1
    elsif column == "C"
        2
    end
end

def valid_move(row, column)
    !row.nil? && !column.nil? && @board[row][column] == BLANK
end

def toggle_current_turn
    if @current_turn == X
        @current_turn = O
    elsif @current_turn == O
        @current_turn = X
    end
end

def tic_tac_toe
    print_board
    
    puts "Current turn: #{@current_turn}"
    
    print "Enter a row: "
    row_input = gets.strip
    
    print "Enter a column: "
    column_input = gets.strip
    
    if row_input == "quit" || column_input == "quit"
        return
    end
    
    row = row_index(row_input)
    column = column_index(column_input)
    
    if valid_move(row, column)
        @board[row][column] = @current_turn
        toggle_current_turn
    else
        puts "Error: Invalid move. Try again."
    end
    
    tic_tac_toe
end

tic_tac_toe
