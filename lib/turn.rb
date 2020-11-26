def display_board(
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "])
  puts 'display board'
#board output
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  user_input = input.to_i 
  return user_input - 1
end

def valid_move?(board, index)
  if index.between?(0, 8) && board[index] == " " || board[index] == "" || board[index] == nil 
    return true
  else
    return false 
  end
end

def move(board, index, token)
  # board[0] = "O"
  # board[8] = "X"
  
  board[index] = token 
end


def turn(input)
  puts "Please enter 1-9:"
  
  while valid_move?(board, input) == false do 
    input = gets.chomp
  end
end


