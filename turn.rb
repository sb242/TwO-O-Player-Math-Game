class Turn
  def initialize(current_player)
    @current_player = current_player
    @number_1 = rand(1..20)
    @number_2 = rand(1..20)
  end

  def print_question
    puts "Player #{@current_player}: What does #{@number_1} plus #{@number_2} equal?"
  end

  def is_correct
    player_answer = gets.chomp
    correct_answer = @number_1 + @number_2
    return true if correct_answer == player_answer.to_i
    false
  end
end