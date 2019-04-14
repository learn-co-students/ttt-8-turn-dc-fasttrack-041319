def display_board(board)
  line = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end



def input_to_index(user_input)
  space = user_input.to_i - 1
  return space
end

def move(board, indexa, current_player = "X")
  board[indexa] = current_player
end


def position_taken?(board, location)
  if board[location] == " " || board[location] == ""
    return TRUE
  else
    puts "That spot is taken"
    return FALSE
  end
end

def valid_move?(board, index)
  return index.between?(0,8) && position_taken?(board, index)
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if valid_move?(board, index) 
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

