# Define display_board that accepts a board and prints
# out the current state.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  
  if (index >= 0 && index <= 8) && !position_taken?(board,index)
    return true
  else
    return FALSE
  end
  
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return FALSE
  else
    return true
  end
  
end

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1
  return index
end

def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)

  index = get_index
  
  if valid_move?(board,index)
    move(board, index, "X")
    display_board(board)
  else
    until valid_move?(board,index)
      index = get_index
    end
  end

end

def get_index
  puts "Please enter 1-9:"
  input = gets.strip
  
  index = input_to_index(input)
  
  return index
end