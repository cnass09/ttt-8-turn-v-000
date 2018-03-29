require_relative '../lib/turn'

def display_board(board)
  puts (" " + board[0] + " | " + board[1] + " | " + board[2] + " ")
  puts "-----------"
  puts (" " + board[3] + " | " + board[4] + " | " + board[5] + " ")
  puts "-----------"
  puts (" " + board[6] + " | " + board[7] + " | " + board[8] + " ")
end

def input_to_index(user_input)
  index = user_input.to_i - 1
  return index
end

def valid_move?(board,index)
    if index.between?(0,8) && !(position_taken?(board, index))
        return true
        puts "Success. Board updated."
    else 
        return false
        puts "Invalid move. Please try again."
    end
end

def position_taken?(board, index)
  taken = nil
    if board[index] != 'X' && board[index] != 'O'
      taken = false
    else taken = true
    end
end

def move(board, index, token)
  if token != 'X' && token != 'O'
    puts "Invalid token. Please select X or O."
  else
    board[index] = token
  end
end

def turn(board)
  puts "Please enter 1-9:"
  valid_move?(board, index)
  move(board, index, token)
  display_board(board)
end