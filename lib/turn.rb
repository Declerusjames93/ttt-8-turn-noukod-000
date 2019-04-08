
#function display_board
#if index is valid...
def valid_move?(n_user_input , board)
  n_user_input .between?(0, 8) && !(position_taken?(board, n_user_input ))
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
