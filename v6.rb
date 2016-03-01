# Make arrays for the rows

# These are constants
X = "X"
O = "O"
BLANK = " "

# This is an instance variable
@current_turn = X

# Arrays that represent the rows
@row_1 = [BLANK, BLANK, BLANK]
@row_2 = [BLANK, BLANK, BLANK]
@row_3 = [BLANK, BLANK, BLANK]

def print_board
    puts "  A B C"
    puts "  - - -"
    puts "1|#{@row_1.join("|")}|"
    puts "  - - -"
    puts "2|#{@row_2.join("|")}|"
    puts "  - - -"
    puts "3|#{@row_3.join("|")}|"
    puts "  - - -"
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

def get_square(row, column)
    index = column_index(column)
    
    if index == nil
        return nil
    end
    
    if row == "1"
        @row_1[index]
    elsif row == "2"
        @row_2[index]
    elsif row == "3"
        @row_3[index]
    end
end

def set_square(row, column, value)
    index = column_index(column)
    
    if index == nil
        return
    end
    
    if row == "1"
        @row_1[index] = value
    elsif row == "2"
        @row_2[index] = value
    elsif row == "3"
        @row_3[index] = value
    end
end

def valid_move(row, column)
   get_square(row, column) == BLANK
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
    row = gets.strip
    
    print "Enter a column: "
    column = gets.strip
    
    if row == "quit" || column == "quit"
        return
    end
    
    if valid_move(row, column)
        set_square(row, column, @current_turn)
        toggle_current_turn
    else
        puts "Error: Invalid move. Try again."
    end
    
    tic_tac_toe
end

tic_tac_toe
