defmodule Chop do
  
  def guess(target, range = first..last) do
    _guess(target, range, div(last-first, 2) + 1)
  end

  defp _guess(target, _range = first.._last, currentGuess) 
    when currentGuess > target do
      IO.puts "Is it #{currentGuess}"
      nextGuess = div(currentGuess - first, 2) + first
      _guess(target, first..currentGuess-1, nextGuess)
  end

  defp _guess(target, _range = _first..last, currentGuess)
    when currentGuess < target do
      IO.puts "Is it #{currentGuess}"
      nextGuess = div(last - currentGuess, 2) + currentGuess
      _guess(target, currentGuess..last, nextGuess+1)
  end

  defp _guess(target, _, currentGuess) do
    IO.puts "Is it #{currentGuess}"
    target
  end

end
