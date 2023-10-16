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
    
    # creates round for P1 and P2 until one of them reaches 0 lives
    until @p1_lives_left == 0 || @p2_lives_left == 0 do
      result = game_round.play
      puts "Round result: #{result}, which mean #{@p1.name} lost #{(result & 1)} lives and #{@p2.name} lost #{((result & 2)/2).floor} lives"

      @p1_lives_left -= (result & 1) #1 on the right position of 01 (binary) means P1 lost a life
      @p2_lives_left -= ((result & 2)/2).floor #1 on the left position of 10 (binary) means P2 lost a life

      puts "lives left - #{@p1.name}: #{@p1_lives_left}, #{@p2.name}: #{@p2_lives_left}"
    end

    final_result
  end 

  private

  def final_result
    final_message = ""

    if @p1_lives_left == 0
      if @p2_lives_left == 0
        final_message = "Incredible, IT'S A DRAW! #{@p1.name} and #{@p2.name} both lose."
      else
        final_message = "#{@p2.name} wins with a score of #{@p2_lives_left}/#{@p2.total_lives}. Well done!"
      end
    else
      final_message = "#{@p1.name} wins with a score of #{@p1_lives_left}/#{@p1.total_lives}. Well done!"
    end

    puts final_message
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end