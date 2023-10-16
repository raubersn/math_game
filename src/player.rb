class Player
  attr_reader :name, :total_lives

  def initialize(name)
    @name = name
    @total_lives = 3
  end
end