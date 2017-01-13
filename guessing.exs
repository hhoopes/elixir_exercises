defmodule Chop do
  def guess(actual, first..last) do 
    IO.puts("Kicking off guesses")
    guess(actual, midpoint(first,last), first..last) 
  end

  def guess(actual, guess, _range) when actual == guess do 
    IO.puts "Correct guess of #{guess}!"
  end

  def guess(actual, guess, first.._last) when actual < guess do
    IO.puts "Guessed #{guess}"
    guess(actual, midpoint(first,guess-1), first..(guess-1))
  end

  def guess(actual, guess, _first..last) when actual > guess do
    IO.puts "Guessed #{guess}"
    guess(actual, midpoint(guess+1, last), (guess+1)..last)
  end


  def midpoint(first, last) do
    div(last-first, 2) + first
  end
end
