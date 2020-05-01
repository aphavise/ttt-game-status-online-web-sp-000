require 'pry'

# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle Column
  [2,5,8], # Right Column
  [0,4,8], # 1st diagonal
  [2,4,6], # 2nd diagonal
  # ETC, an array for each win combination
]

# board = ["X", "X", "X", "O", "O", " ", " ", " ", " "]

def won?(board)
  # binding.pry
  WIN_COMBINATIONS.each do |combination|

        first_index = combination[0]
        second_index = combination[1]
        third_index = combination[2]

        position_1 = board[first_index]
        position_2 = board[second_index]
        position_3 = board[third_index]

       if (position_1 == "X"  && position_2 == "X" && position_3 == "X") ||
          (position_1 == "0"  && position_2 == "O" && position_3 == "O")
          return combination
          won_board = true
       end
    end
  won_board
end

#
# def full?(board)
#   board.none? do |marker|
#     marker == "X" || marker == "O"
#   end
# end
#
# def draw?(board)
#   !won?(board) && full?(board)
# end
#
# def over?(board)
#   won?(board) || draw?(board)
# end
#
# def winner(board)
#   if win_array = won?(board)
#     board[win_array.first]
#   end
# end
