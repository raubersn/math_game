require "./src/player.rb"
require "./src/game.rb"

puts "Welcome PLAYER 1! What is your name?"
p1 = Player.new(gets.chomp)
puts "#{p1.name} has #{p1.total_lives} lives!\n "

puts "Welcome PLAYER 2! What is your name?"
p2 = Player.new(gets.chomp)
puts "#{p2.name} has #{p2.total_lives} lives!\n "

puts "Awesome! Let's the game begin!!\n "

challenge = Game.new(p1, p2)
challenge.play