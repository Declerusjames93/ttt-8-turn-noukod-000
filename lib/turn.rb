
#function display_board
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

#conver string to integer
def input_to_index(move)
   index = move.to_i - 1
   index
end

#function turn
def turn(board)
  puts "Please enter 1-9:"
  #get the user input
  user_input = gets.strip
  #input to index
  index = input_to_index(user_input)


  #check for validation
  if valid_move?(board,index)
    puts "valid move"
      board[index]=value
    move(board, index, value)
    display_board(board)

   else
    puts "try again"
    turn(board)
  end
  display_board(board)
end

#CHECK FOR EMPTY SPACE
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

#IS # CORRECT & SPACE EMPTY?
def valid_move?(board, index)

  if index.between?(0,8) && !position_taken?(board, index)
      puts "this is a valid move"
    return true
  else
   return false
  end
end

#COUNT
def turn_count(board)
  counter = 0
  board.each do |space|
    if space == "X" || space == "O"
      counter +=1
  end
end
return counter
end



#MAKE MOVE ON BOARD
def move(board, index, value)
  board[index] = value
end
#add missing code here
