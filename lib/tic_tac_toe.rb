class TicTacToe
  ##initialize method serves as the setter method so remember that it's instance variable should be set equal to that argument.
  ##the argument board should be nil/nothing/blank as default
  ##remember that board needs to be defined as an array
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end


  WIN_COMBINATIONS = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
  ]
  def display_board
    puts " #{@board[0]} " "|" " #{@board[1]} " "|" " #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} " "|" " #{@board[4]} " "|" " #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} " "|" " #{@board[7]} " "|" " #{@board[8]} "
  end

  def input_to_index(user_input)
    user_input.to_i - 1
  end

  def move(index, players_token = "X")
    @board[index] = players_token
  end

  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end

  def valid_move?(index)
  index.between?(0,8) && !position_taken?(@board, index)
  end


end
