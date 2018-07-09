# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
[0,1,2], #Top rows
[3,4,5],
[6,7,8],

[0,3,6], #Top columns
[1,4,7],
[2,5,8],

[0,4,8], #Diagnonals
[2,4,6]
]
def won?(board)
    WIN_COMBINATIONS.each do |win_combination|
      win_combination.each do |win_index|

        position_1 = board[win_index] # load the value of the board at win_index_1
        position_2 = board[win_index]
        position_3 = board[win_index]
        if position_1 == "X" && position_2 == "X" && position_3 == "X"
          return win_combination
        else
          return false
        end
      end
    end
end
