# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0, 1, 2],
  [0, 4, 8],
  [0, 3, 6],
  [3, 4, 5],
  [6, 4, 2],
  [1, 4, 7],
  [6, 7, 8],
  [2, 5, 8]
]

def won?(board)
  winning_combination = WIN_COMBINATIONS.detect do |combination|
    board[combination[0]] != " " && board[combination[0]] == board[combination[1]] && board[combination[1]] == board[combination[2]]
end
end

def full?(board)
  (board).none?{|i| i == " "}
end

def draw?(board)
  full?(board) && !won?(board)
  end

def over?(board)
  full?(board) || won?(board) || draw?(board)
end

def winner(board)
  if won?(board) == true
    return board[combination[0]]
  end
end
