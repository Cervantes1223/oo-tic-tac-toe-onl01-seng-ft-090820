class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
end 

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [6,4,2],
  [0,4,8], ]

def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end

   def input_to_index(string)
  @choose = string.to_i-1
  end

   
   def move(position, char)
    @board[position] = char
  end
  
   def position_taken?(input_to_index)
    if(@board[input_to_index] == 'X' || @board[input_to_index] == 'O'
      TRUE
    else
      FALSE
    end 
  end
  
  def valid_move?(input_to_index)
    !position_taken?(input_to_index) && @board[input_to_index]
  end

def turn_count
    count = 0 
    @board.each do |i| 
      count +=1 if i == "X" || i == "O"
    end 
    count 
  end
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end


  
  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(index,)
      move(index, current_player)
      display_board
    else
      turn
    end
end

 def won?
   WIN_COMBINATIONS.detect do |combo|
      @board[combo[0]] == @board[combo[1]] &&
      @board[combo[2]] == @board[combo[2]] &&
      position_taken?(combo[0])
    end 
  end
  
  def full?
    @board.all?{|token| token == "X" || token == "O"
  end
 
  def valid_move?(index)
    index.between?(0,8) && !position_taken?(index)
  end

  def draw?
    !won? && full?
  end
  
  def position_taken?(index)
    !(@board[index].nil? || @board[index] == " ")
  end

  
  def move(position, char)
    @board[position] = char
  end

  
  
 
  def over?
    won? || draw?
  end

  

  
 

  
  



  def winner
    if won?
      @board[won?[0]] == "X" ? "X" : "O"
    else
      nil
    end
  end

end

