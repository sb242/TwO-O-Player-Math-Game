class Player
  attr_accessor :lives, :player_number

  def initialize(player_number)
    @player_number = player_number
    @lives = 3
  end

  def lose_life
    self.lives -= 1
  end

  def is_alive
    (self.lives > 0) ? true : false
  end
end

# player_1 = Player.new(1)
# puts(player_1.lives)
# player_1.lose_life
# player_1.lose_life
# player_1.lose_life
# puts(player_1.lives)
# puts(player_1.is_alive)