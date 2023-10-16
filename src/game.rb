require "./src/round.rb"

class Game
  def initialize (player1, player2)
    @p1 = player1
    @p2 = player2
    @p1_lives_left = player1.total_lives
    @p2_lives_left = player2.total_lives
  end

  def play
    game_round = Round.new(@p1.name, @p2.name)
    
    # creates a round for P1 and P2 until one of them reaches 0 lives
    until @p1_lives_left == 0 || @p2_lives_left == 0 do
      result = game_round.play
      # puts "Round result: #{result}, which mean #{@p1.name} lost #{(result & 1)} lives and #{@p2.name} lost #{((result & 2)/2).floor} lives"

      @p1_lives_left -= (result & 1) #1 on the right position of 01 (binary) means P1 lost a life
      @p2_lives_left -= ((result & 2)/2).floor #1 on the left position of 10 (binary) means P2 lost a life

      puts "#{@p1.name}: #{@p1_lives_left}/#{@p1.total_lives} VS #{@p2.name}: #{@p2_lives_left}/#{@p2.total_lives}\n\n "
    end

    final_result
  end 

  private

  def final_result
    if @p1_lives_left == 0
      if @p2_lives_left == 0 # Both players have 0 lives. It's a draw
        final_message = "\nIncredible, IT'S A DRAW! #{@p1.name} and #{@p2.name} both lose."
      else # P1 has 0 lives. P2 is the winner
        final_message = "\n#{@p2.name} wins with a score of #{@p2_lives_left}/#{@p2.total_lives}. Well done!"
      end
    else # P1 still have lives when the game was over. P1 is the winner
      final_message = "\n#{@p1.name} wins with a score of #{@p1_lives_left}/#{@p1.total_lives}. Well done!"
    end

    puts "----- GAME OVER -----"
    puts final_message
    puts "Good bye!"
  end
end