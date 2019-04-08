
#function display_board
#if index is valid...
def valid_move?(number_entered, board)
  number_entered.between?(0, 8) && !(position_taken?(board, number_entered))
end
#if index is valid...make the move for index
def move(board, index, value = "X")
  board[index] = value
end
#if index is valid...show the board
def position_taken?(board, index)
 !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

final_position = number_entered()

#else ask for input again until you get valid input
#_________________________________________________

#if index is valid
if valid_move?(number_entered, board)
#   - make the move for index
  move(board, number_entered)
#   - show the board
  display_board(ttt_board)
#else ask tor input again unti
