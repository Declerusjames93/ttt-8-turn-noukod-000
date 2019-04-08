
#function display_board

def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

#conver string to integer
user_input="1"
def input_to_index(user_input)
   return user_input.to_i - 1
end

#function turn
def turn(board)
  puts "Please enter 1-9:"
  #get the user input
  user_input = gets.strip
  #input to index
  index = input_to_index(user_input)

board[index]=value
  #check for validation
  if valid_move?(board,index)
    puts "valid move"

  move(board, index, value)
    return display_board(board)
   else
    puts "try again"
    turn(board)
  end
return display_board(board)
end

#CHECK FOR EMPTY SPACE
def position_taken?(board, index)
  !
  if board[index]=="X" || board[index] == "O"
    return true
  else board[index]==" " || board[index] == " "|| board[index]==nil
    return false
  end
end

#IS # CORRECT & SPACE EMPTY?
def valid_move?(board,index)
	if (!position_taken?(board, index) && index.between?(0,8))
		return true

 	else
		return false

 	end

 end


def move(board, index, value)
  board[index] = value
  board[index] = " "

end
#add missing code here
