require 'pry'
class GuessNumber
  attr_reader :level
  attr_writer :guess_count

  def initialize(level)
    @level = set_level(level)
    @number_to_guess = number_to_guess
    @guess_count = 0
  end

  def guess(number)
    @guess_count += 1
    if number == @number_to_guess
      "You win. You had #{@guess_count} guesses"
    elsif number > @number_to_guess
      'You need to go lower'
    elsif number < @number_to_guess
      'You need to go higher'
    end
  end

  private

  def number_to_guess
    rand(1...@level)
  end

  def set_level(level)
    level.downcase! if level.is_a? String
    case level
    when '1', 'lätt'
      10
    when '2', 'medium'
      100
    when '3', 'svårt'
      1000
    else
      raise 'Only choose the options above'
    end
  end
end
