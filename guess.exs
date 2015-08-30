# a number guessing game

defmodule Game do
  def run do
    play read_guess, :random.uniform(100)
  end

  defp play(guess, ans) when guess == ans do
    IO.puts "WINNER!"
  end
  defp play(guess, ans) do
    display_high_low guess, ans
    play read_guess, ans
  end

  defp display_high_low(guess, ans) when guess > ans do
    IO.puts "too high"
  end
  defp display_high_low(_, _) do
    IO.puts "too low"
  end

  defp read_guess do
    {input, _} = IO.gets("guess a number between 1 and 100: ") |> Integer.parse
    input
  end
end

:random.seed :erlang.now
Game.run
#|> Integer.parse
