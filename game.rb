require './guess_number'
require 'pry'

def choose_level
  puts 'Choose level'
  puts '1: Lätt'
  puts '2: Medium'
  puts '3: Svårt'
  level = gets.chomp
  @game = GuessNumber.new(level)
  make_a_guess
end

def make_a_guess
  puts 'Make a guess:'
  player_choice = gets.chomp
  result = @game.guess(player_choice.to_i)
  puts result
  make_a_guess unless result.include?('You win')
end

choose_level
