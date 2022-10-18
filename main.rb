=begin
classes - player, turn, game

player - in charge of handling the state of lives and score
  State: lives
  Methods: get_lives, lose_life

turn - in charge of handling the question and the given answers
  State: answer, current_player
  Methods: get_question, is_correct

game - in charge of generating new turns and determining state of the game
  Methods: game_over? new_turn
=end

require './player'
require './game'
require './turn'

new_game = Game.new
new_game.start