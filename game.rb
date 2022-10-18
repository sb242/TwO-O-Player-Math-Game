class Game 
  def initialize
    @player_1 = Player.new(1)
    @player_2 = Player.new(2)
  end

  def start
    current_player = @player_1
    while(@player_1.is_alive && @player_2.is_alive)
      turn = Turn.new(current_player.player_number)

      puts("----- NEW TURN -----")

      turn.print_question

      if(!turn.is_correct)
        puts("Player #{current_player.player_number}: Incorrect! You lose a life.")
        current_player.lose_life
      else
        puts("Player #{current_player.player_number}: That is correct!")
      end

      puts("P1: #{@player_1.lives}/3 vs P2: #{@player_2.lives}/3")

      current_player == @player_1 ? current_player = @player_2 : current_player = @player_1 
    end
      puts("---Game Over---\nPlayer #{current_player.player_number} wins with a score of #{current_player.lives}/3")
  end
end