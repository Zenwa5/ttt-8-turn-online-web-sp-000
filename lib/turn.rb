board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
converted_input = "#{user_input}".to_i
return converted_input - 1
end

def position_taken?(board, index)
  if (board[index] == "X" || board[index] ==  "O")
    return true
  elsif (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  end
end

def valid_move?(board, index)
  if ((position_taken?(board, index) == false) && (index.between?(0,8) == true))
    return true
  else
    return false
  end
end


def move(board, index, character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
index = input_to_index(input)
if valid_move?(board, index) == false
  turn(board)
end
else
  move(board, index)
  display_board(board)
end
