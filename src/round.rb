class Round
  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play
    rand(0..3)
    # result = turn(player1) #stores the P1 result of on the first position of the binary 00
    # result += turn(player2) * 2 #stores the P1 result of on the first position of the binary 00
  end

  private

  def turn
    # operation = operation # prints the operation
    # gets.chomp # gets the imput from the user

    # result = 1 #  returns 1 for a correct answer
  end
end