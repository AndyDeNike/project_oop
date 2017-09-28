class TicTacToe

end


def display_board(board)
  puts "#{board[0]}|#{board[1]}|#{board[2]}"
  puts "-----------"
  puts "#{board[3]}|#{board[4]}|#{board[5]}"
  puts "-----------"
  puts "#{board[6]}|#{board[7]}|#{board[8]}"
end 

#def input_to_index(userinput)
	#index = (userinput.to_i) - 1
#end 

def turn(board)
	puts "Where would you like to go?  Please enter 1-9:"
	input = (gets.strip.to_i) - 1
	if valid_move?(board, input)
		move(board, input, " X ")
		display_board(board)
	else 
		puts "Sorry that is not possible SON!"
		turn(board)  #creates a recursion loop that forces user to satisfy valid_move? as 'true' before resolving
	end 
end 

def move(array, index, playerchar)  #playerchar should have default of 'X'
	array[index] = playerchar
end 

def valid_move?(board, index)
	if index.between?(0,8) && position_taken?(board, index) == false 
		true 
	end 
end 


def position_taken?(board, index)
	board[index] == ("   " || "" || nil)? false : true 
end 

def play(board)
	puts "Welcome to Tic Tac Toe!"
	display_board(board)
	turnCount = 0
	while (turnCount < 9)
		turn(board)
		turnCount += 1 
	end 
end 



#everything under this is CLI "lib" run 

#puts "Welcome to Tic Tac Toe!"

board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "]

play(board)

#display_board(board)

#turn(board)


