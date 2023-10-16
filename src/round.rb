class Round
  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
  end

  # Execute the round, giving a turn to each player
  def play
    result = turn(@player1) #stores the P1 result of on the right position of the binary 00
    result += turn(@player2) * 2 #stores the P1 result of on the left position of the binary 00
  end

  private

  def turn (player_name)
    addend1 = rand(1..20)
    addend2 = rand(1..20)

    puts "----- NEW TURN -----"
    puts "#{player_name}, what does #{addend1} plus #{addend2} equal?"
    answer = gets.chomp # gets the imput from the user

    # puts "#{addend1} + #{addend2} = #{addend1 + addend2}. Answer: #{answer}"

    if answer.to_i == addend1 + addend2 # Correct answer
      message = "YES! #{player_name} is correct.\n "
      lost_live = 0
    else # Wrong answer. the player loses a life
      message = "Seriously, #{player_name}? No!\n "
      lost_live = 1
    end

    puts message
    lost_live
  end
end