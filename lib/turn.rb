require_relative
'..lib/turn.rb' 

board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
 
puts "Welcome to Tic Tac Toe!"

display_board(board)
turn(board)

def turn(board)
  puts "Please enter 1-9:"
end

def display_board
  puts board 
end

def valid_move
  if position_taken == TRUE
    puts board[]
  end
end 

def move   
  ruby input_to_index 
  board[move]
end
