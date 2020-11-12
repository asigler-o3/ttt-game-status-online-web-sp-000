# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [6, 4, 2]
]

def won?(board)
  WIN_COMBINATIONS.each do |single_win_combo|
    index_1 = single_win_combo[0]
    index_2 = single_win_combo[1]
    index_3 = single_win_combo[2]

    index_1 = board[index_1]
    index_2 = board[index_2]
    index_3 = board[index_3]

    if index_1 == index_2 && index_2 == index_3 && position_taken?(board, index)
      return single_win_combo
    end
  end
  return false
end
