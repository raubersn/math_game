require "./src/player.rb"
require "./src/game.rb"

p1 = Player.new("Gasparov")
p2 = Player.new("Big Blue")

puts "#{p1.name} has #{p1.total_lives} lives!"
puts "#{p2.name} has #{p2.total_lives} lives!"

challenge = Game.new(p1, p2)
challenge.play