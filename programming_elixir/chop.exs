defmodule Chop do
  def guess(n, low..high) do
    half_range = div((high - low)+1, 2)
    do_guess(n, half_range, low + half_range)
  end

  defp do_guess(n, _, n) do
    print_guess n
    n
  end
  defp do_guess(n, _, current_guess) when current_guess == n - 1 or current_guess == n + 1 do
    print_guess current_guess
    do_guess n, 0, n
  end
  defp do_guess(n, range, current_guess) when current_guess < n do
    print_guess current_guess
    half_range = div(range+1, 2)
    do_guess(n, half_range, current_guess + half_range)
  end
  defp do_guess(n, range, current_guess) do
    print_guess current_guess
    half_range = div(range+1, 2)
    do_guess(n, half_range, current_guess - half_range)
  end

  defp print_guess(n) do
    IO.write "Is it "
    IO.puts n
  end
end
