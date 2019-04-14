def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!


def input_to_index(input)
  index_number = input.to_i - 1
  puts index_number
  return index_number
end

def move(array, index, char="X")
  array[index] = char
end

def valid_move?(board, index)
  if (position_taken?(board, index) == false && index.between?(0,8) == true)
    puts "valid"
    return true 
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? 
board = [" "," "," "," "," "," "," "," "," "]

def position_taken?(board, index)
  if (board[index] == " "|| board[index] == ""|| board[index] == nil)
    puts "not taken (false)"
    return false
  elsif (board[index] == "X"|| board[index] =="O")
    puts "taken (true)"
    return true
  end
end

def move(array, index, char="X")
  array[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)
  
  
  if (valid_move?(board, index))
    move(board, index, char="X")
    display_board(board)
  else
    while !(valid_move?(board, index))
    puts "Please enter 1-9:"
    input = gets.strip

    index = input_to_index(input)
  end
  end
end





