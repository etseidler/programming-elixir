defmodule Chop do
  
  def guess(target, range) do
    first..last = range
    guessWithMidpoint(target, range, div(last-first, 2) + 1)
  end

  def guessWithMidpoint(target, range, currentGuess) when currentGuess > target do
    first.._ = range
    IO.puts "Is it " <> to_string currentGuess
    nextGuess = div(currentGuess - first, 2) + first
    guessWithMidpoint(target, first..currentGuess-1, nextGuess)
  end

  def guessWithMidpoint(target, range, currentGuess) when currentGuess < target do
    _..last = range
    IO.puts "Is it " <> to_string currentGuess
    nextGuess = div(last - currentGuess, 2) + currentGuess
    guessWithMidpoint(target, currentGuess..last, nextGuess+1)
  end

  def guessWithMidpoint(target, _, currentGuess) when currentGuess === target do
    IO.puts "Is it " <> to_string currentGuess
    target
  end

end
